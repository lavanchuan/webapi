package com.chuan.webapi.repositories.dbcontexts;

import com.chuan.webapi.repositories.ProductDetailRepository;
import com.chuan.webapi.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DbContext {
    @Autowired
    public ProductRepository productRepository;
    @Autowired
    public ProductDetailRepository productDetailRepository;
}
