package com.chuan.webapi.controllers;

import com.chuan.webapi.controllers.advices.exceptions.ProductDetailNotFoundException;
import com.chuan.webapi.models.ResponseTitle;
import com.chuan.webapi.models.assemblers.ProductDetailModelAssembler;
import com.chuan.webapi.services.IProductService;
import com.chuan.webapi.services.ProductService;
import com.chuan.webapi.services.mappers.ProductDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.stream.Collectors;

@RestController
@RequestMapping("/api")
public class ProductDetailController {
    @Autowired
    ProductService service;
    @Autowired
    ProductDetailModelAssembler assembler;

    @GetMapping("/product-detail/{id}")
    public ResponseEntity<?> productDetailFindById(@PathVariable int id){
        return ResponseEntity.ok(
                ProductDetailMapper.toDTO(
                        service.dbContext.productDetailRepository.findById(id)
                            .orElseThrow(()->new ProductDetailNotFoundException(id)))
        );
    }

    @GetMapping("/product-detail/all/with-last-propertysort")
    public ResponseEntity<?> productDetailAllWithLastPropertysort(){
        return ResponseEntity.ok(
                service.productDetailAllWithLastPropertysort()
        );
    }

    @GetMapping("/product-detail/all/with-last-propertysort/link")
    public ResponseEntity<?> productDetailAllWithLastPropertysortLink(){
        return ResponseEntity.ok(
                service.productDetailAllWithLastPropertysort().stream()
                        .map(assembler::toModel).collect(Collectors.toList())
        );
    }

    @PostMapping("/product/update-quatity")
    public ResponseEntity<?> productUpdateQuantity(
            @RequestParam(name = "productDetailId", required = true) int productDetailId,
            @RequestParam(name = "quantity", required = true) int quantity){

        if(service.productUpdateQuantity(productDetailId, quantity))
            return ResponseEntity.status(HttpStatus.OK)
                    .body(ResponseTitle.SUCCESS);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                .body(ResponseTitle.INVALID);
    }

    @PostMapping("/buy-product")
    public ResponseEntity<?> productBuy(
            @RequestParam(name = "productDetailId", required = true) int productDetailId,
            @RequestParam(name = "quantity", required = true) int quantity){
        switch (service.buyProduct(productDetailId, quantity)){
            case IProductService.INVALID:
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body(ResponseTitle.INVALID);
            case IProductService.INSUFFICIENT:
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body(ResponseTitle.INSUFFCIENT);
            case IProductService.EQUALS_ZERO:
                return ResponseEntity.status(HttpStatus.OK)
                        .body(ResponseTitle.EQUALS_ZERO);
            case IProductService.OUT_OF:
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body(ResponseTitle.OUT_OF);
            default: return ResponseEntity.status(HttpStatus.OK)
                    .body(ResponseTitle.SUCCESS);
        }
    }
}
