package com.chuan.webapi.controllers.advices.exceptions;

public class ProductDetailNotFoundException extends RuntimeException{
    public ProductDetailNotFoundException(int id){
        super("Could not found product detail: " + id);
    }
}
