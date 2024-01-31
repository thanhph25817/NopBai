package com.example.demo.Custo;

import com.example.demo.Orde.Order;
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
@Table(name = "tb_customer")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_customer")
    private Integer id;
    @Column(name = "userName_customer")
    private String userName;
    @Column(name = "passWord_customer")
    private String passWord;
    @Column(name = "fullName_customer")
    private String fullName;
    @Column(name = "email_customer")
    private String email;
    @Column(name = "photo_customer")
    private String photo;
    @Column(name = "activated_customer")
    private int activated;
    @Column(name = "admin_customer")
    private int admin;

    @OneToMany(mappedBy = "customer")
    private List<Order> orderList;
}
