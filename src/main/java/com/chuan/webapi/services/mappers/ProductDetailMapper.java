package com.chuan.webapi.services.mappers;

import com.chuan.webapi.models.dtos.ProductDetailDTO;
import com.chuan.webapi.models.entities.ProductDetail;
import org.springframework.stereotype.Service;

@Service
public class ProductDetailMapper {
    public static ProductDetailDTO toDTO(ProductDetail entity){

        return new ProductDetailDTO(entity.getProductDetailId(),
                entity.getProductPropertyName(),
                entity.getQuantity(),
                entity.getPrice(),
                entity.getShellPrice(),
                entity.getProductDetail() == null ? -1 : entity.getProductDetail().getProductDetailId());
    }
}
