package com.chuan.webapi.models.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_productDetailPropertyDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetailPropertyDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productDetailPropertyDetailId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "productDetailId")
    private ProductDetail productDetail;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "propertyDetailId")
    private PropertyDetail propertyDetail;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "productId")
    private Product product;
}
