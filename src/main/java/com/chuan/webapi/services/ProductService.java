package com.chuan.webapi.services;

import com.chuan.webapi.controllers.advices.exceptions.ProductDetailNotFoundException;
import com.chuan.webapi.models.dtos.ProductDetailDTO;
import com.chuan.webapi.models.entities.ProductDetail;
import com.chuan.webapi.repositories.dbcontexts.DbContext;
import com.chuan.webapi.services.mappers.ProductDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService implements IProductService{
    @Autowired
    public DbContext dbContext;

    @Override
    public int buyProduct(int productDetailId, int quantity){
        if(quantity < 0) return IProductService.INVALID;
        if(quantity == 0) return IProductService.EQUALS_ZERO;
        ProductDetail entity = dbContext.productDetailRepository.findById(productDetailId)
                .orElseThrow(()->new ProductDetailNotFoundException(productDetailId));
        if(entity.getQuantity() == 0) return IProductService.OUT_OF;
        if(entity.getQuantity() < quantity) return IProductService.INSUFFICIENT;
        productUpdateQuantity(productDetailId, entity.getQuantity() - quantity);
        return IProductService.SUCESS;
    }

    @Override
    public boolean productUpdateQuantity(int productDetailId, int quantity){
        if(quantity < 0) return false;
        ProductDetail entity = dbContext.productDetailRepository.findById(productDetailId)
                .orElseThrow(()->new ProductDetailNotFoundException(productDetailId));
        int deltaQuantity = quantity - entity.getQuantity();
        entity.setQuantity(quantity);
        dbContext.productDetailRepository.save(entity);
        updateQuantityParent(ProductDetailMapper.toDTO(entity).getParentId(), deltaQuantity);
        return true;
    }

    private void updateQuantityParent(int parentId, int deltaQuantity) {
        if(parentId == -1) return;
        ProductDetail entity = dbContext.productDetailRepository.findById(parentId)
                .orElseThrow(()->new ProductDetailNotFoundException(parentId));
        entity.setQuantity(entity.getQuantity() + deltaQuantity);
        dbContext.productDetailRepository.save(entity);
        updateQuantityParent(ProductDetailMapper.toDTO(entity).getParentId(), deltaQuantity);
    }

    @Override
    public List<ProductDetailDTO> productDetailAllWithLastPropertysort(){
        List<ProductDetailDTO> result = new ArrayList<>();
        List<ProductDetail> entities = new ArrayList<>();
        dbContext.productRepository.findAll()
        .stream().map(product -> {
                    System.out.println(product.getProductId());
            entities.addAll(dbContext.productDetailRepository
                    .productDetailAllWithLastPropertysort(product.getProductId()));
            return null;
        }).collect(Collectors.toList());

        for(ProductDetail entity : entities){
            result.add(ProductDetailMapper.toDTO(entity));
        }
        return result;
    }
}
