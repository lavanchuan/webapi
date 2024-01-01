package com.chuan.webapi.models.dtos;

import com.chuan.webapi.models.entities.ProductDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetailDTO {
    private int productDetailId;
    private String productPropertyName;
    private int quantity;
    private float price;
    private float shellPrice;
    private int parentId;
}
