package com.example.demo.Service;

import com.example.demo.prodct.Product;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface ProductService {
    List<Product> getAll();

    Optional<Product> getProductId(Integer id);

    Product saveProduct(Product product);

    Product updateProduct(Product product);

    void deleteProduct(Integer id);
}
