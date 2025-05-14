package com.accesa.accesa_challenge.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.GenerationType;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
public class PriceEntry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "price_entry_id")
    private Integer priceEntryId;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "store_id")
    private Store store;

    @Column(name = "price_entry_quantity")
    private double priceEntryQuantity;

    @Column(name = "price_entry_unit")
    private String priceEntryUnit;

    private double price;

    private String currency;

    private LocalDate date;
}
