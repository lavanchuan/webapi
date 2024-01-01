package com.chuan.webapi.models.assemblers;

import com.chuan.webapi.controllers.ProductDetailController;
import com.chuan.webapi.models.dtos.ProductDetailDTO;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.stereotype.Component;

@Component
public class ProductDetailModelAssembler implements
        RepresentationModelAssembler<ProductDetailDTO, EntityModel<ProductDetailDTO>> {
    @Override
    public EntityModel<ProductDetailDTO> toModel(ProductDetailDTO entity) {
        return EntityModel.of(entity,
                linkTo(methodOn(ProductDetailController.class)
                        .productUpdateQuantity(entity.getProductDetailId(), entity.getQuantity())).withRel("Update quantity"),
                linkTo(methodOn(ProductDetailController.class)
                        .productBuy(entity.getProductDetailId(), entity.getQuantity())).withRel("Buy product")
                );
    }
}
