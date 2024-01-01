package com.chuan.webapi.controllers.advices;

import com.chuan.webapi.controllers.advices.exceptions.ProductDetailNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class EntityAdvice {

    @ResponseBody
    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(ProductDetailNotFoundException.class)
    public String notFound(ProductDetailNotFoundException e){
        return e.getMessage();
    }
}
