package com.example.demo.Service;

import com.example.demo.Cate.Category;
import com.example.demo.prodct.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
    List<Category> getAll();

    Category getCategoryId(Integer id);

    Category saveCategory(Category cate);

    Category updateCategory(Category cate);

    void deleteCategory(Integer id);
}
