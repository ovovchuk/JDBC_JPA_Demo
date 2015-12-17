package com.demo.jdbc.domain;

import lombok.*;

import java.math.BigDecimal;

@Data
@RequiredArgsConstructor
public class Product {

    private int productID;
    private final String name;
    private final String color;
    private final int imageID;
    private final String size;
    private final String material;

    @Getter(AccessLevel.NONE)
    private final int isGreen;

    @Setter(AccessLevel.NONE)
    @NonNull
    private BigDecimal entryPrice;

    @Setter(AccessLevel.NONE)
    @NonNull
    private BigDecimal price;

    @Setter(AccessLevel.NONE)
    @NonNull
    private BigDecimal priceSale;
    private final String description;

    @Getter(AccessLevel.NONE)
    private final int isAvailable;
    private final int categoryID;
    private final int quantity;


    public void setEntryPrice(double entryPrice) {
        this.entryPrice = new BigDecimal(Double.toString(entryPrice));
    }

    public void setPrice(double price) {
        this.price = new BigDecimal(Double.toString(price));
    }

    public void setPriceSale(double priceSale) {
        this.priceSale = new BigDecimal(Double.toString(priceSale));
    }

    public boolean getIsGreen() {
        return isGreen == 1;
    }

    public boolean getIsAvailable() {
        return isAvailable == 1;
    }
}
