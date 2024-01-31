package com.example.demo.Orde;

import com.example.demo.Custo.Customer;
import com.example.demo.OrderDete.OrderDetail;
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
@Table(name = "tb_order")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_order")
    private Long id;
    @Column(name = "address_order")
    private String address;
    @Column(name = "status_order")
    private Integer status;

    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetailList;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;
}
