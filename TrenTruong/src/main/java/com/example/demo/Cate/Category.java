package com.example.demo.Cate;

import com.example.demo.prodct.Product;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "tb_categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_categories")
    private Integer id;
    @Column(name = "name_categories")
    private String name;
    @OneToMany(mappedBy = "category")
    private List<Product> product;
}
