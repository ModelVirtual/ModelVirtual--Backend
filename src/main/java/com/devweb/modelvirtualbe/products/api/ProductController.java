package com.devweb.modelvirtualbe.products.api;

import com.devweb.modelvirtualbe.products.domain.service.ProductService;
import com.devweb.modelvirtualbe.products.mapping.ProductMapper;
import com.devweb.modelvirtualbe.products.resource.ProductResource;
import com.devweb.modelvirtualbe.products.resource.ShopResource;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name="Product")
@RestController
@CrossOrigin
@RequestMapping("/api/v1/product")
public class ProductController {

    private final ProductService productService;
    private final ProductMapper mapper;

    public ProductController(ProductService productService, ProductMapper mapper) {
        this.productService = productService;
        this.mapper = mapper;
    }

    @GetMapping
    public List<ProductResource> getAllProduct() {
        return mapper.ListToResource(productService.getAll());
    }

    @GetMapping("{productId}")
    public ProductResource getProductById(@PathVariable Long productId){
        return mapper.toResource(productService.getById(productId));
    }
}
