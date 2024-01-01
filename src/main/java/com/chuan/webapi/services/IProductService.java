package com.chuan.webapi.services;

import com.chuan.webapi.models.dtos.ProductDetailDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IProductService {

    int SUCESS = 0;
    int INSUFFICIENT = 1;
    int OUT_OF = 2;
    int INVALID = -1;
    int EQUALS_ZERO = -2;

    int buyProduct(int productDetailId, int quantity);

    boolean productUpdateQuantity(int productDetailId, int quantity);

    List<ProductDetailDTO> productDetailAllWithLastPropertysort();
}
