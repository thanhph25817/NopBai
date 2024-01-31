package com.example.demo.Controller;

import com.example.demo.Service.ProductService;
import com.example.demo.prodct.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class ProductController {
    @Autowired
    ProductService productService;

    @GetMapping("/product/getAll")
    public ResponseEntity<List<Product>> getAll() {
        return new ResponseEntity<>(productService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/product/get/{id}")
    public ResponseEntity<Product> getById(@PathVariable(value = "id") Integer id) {
        Optional<Product> productOptional = productService.getProductId(id);

        if (productOptional.isPresent()) {
            return new ResponseEntity<>(productOptional.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/product/save")
    public ResponseEntity<Product> save(@RequestBody Product product) {
        return new ResponseEntity<>(productService.saveProduct(product), HttpStatus.CREATED);
    }

    @DeleteMapping(path = "/product/{empid}")
    public ResponseEntity<String> Delete(@PathVariable(value = "empid") Integer empid) {
        productService.deleteProduct(empid);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
