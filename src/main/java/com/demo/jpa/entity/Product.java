package com.demo.jpa.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


@Entity
public class Product {
    private int productId;
    private String name;
    private String color;
    private String size;
    private String material;
    private Boolean isGreen;
    private BigDecimal entryPrice;
    private BigDecimal price;
    private BigDecimal priceSale;
    private String description;
    private Boolean isAvailable;
    private int categoryId;
    private int imageId;
    private Integer quantity;
    private Category category;
    private Image image;
    private List<OrderItem> orderItems;

    @Id
    @Column(name = "productID", nullable = false)
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 30)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "color", nullable = true, length = 255)
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Basic
    @Column(name = "size", nullable = true, length = 12)
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Basic
    @Column(name = "material", nullable = true, length = 255)
    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    @Basic
    @Column(name = "isGreen", nullable = true)
    public Boolean getGreen() {
        return isGreen;
    }

    public void setGreen(Boolean green) {
        isGreen = green;
    }

    @Basic
    @Column(name = "entryPrice", nullable = true, precision = 2)
    public BigDecimal getEntryPrice() {
        return entryPrice;
    }

    public void setEntryPrice(BigDecimal entryPrice) {
        this.entryPrice = entryPrice;
    }

    @Basic
    @Column(name = "price", nullable = true, precision = 2)
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "priceSale", nullable = true, precision = 2)
    public BigDecimal getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(BigDecimal priceSale) {
        this.priceSale = priceSale;
    }

    @Basic
    @Column(name = "description", nullable = true, length = -1)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "isAvailable", nullable = true)
    public Boolean getAvailable() {
        return isAvailable;
    }

    public void setAvailable(Boolean available) {
        isAvailable = available;
    }

    @Basic
    @Column(name = "categoryID", nullable = false, insertable = false, updatable = false)
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Basic
    @Column(name = "imageID", nullable = false, insertable = false, updatable = false)
    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    @Basic
    @Column(name = "quantity", nullable = true)
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (productId != product.productId) return false;
        if (categoryId != product.categoryId) return false;
        if (imageId != product.imageId) return false;
        if (name != null ? !name.equals(product.name) : product.name != null) return false;
        if (color != null ? !color.equals(product.color) : product.color != null) return false;
        if (size != null ? !size.equals(product.size) : product.size != null) return false;
        if (material != null ? !material.equals(product.material) : product.material != null) return false;
        if (isGreen != null ? !isGreen.equals(product.isGreen) : product.isGreen != null) return false;
        if (entryPrice != null ? !entryPrice.equals(product.entryPrice) : product.entryPrice != null) return false;
        if (price != null ? !price.equals(product.price) : product.price != null) return false;
        if (priceSale != null ? !priceSale.equals(product.priceSale) : product.priceSale != null) return false;
        if (description != null ? !description.equals(product.description) : product.description != null) return false;
        if (isAvailable != null ? !isAvailable.equals(product.isAvailable) : product.isAvailable != null) return false;
        if (quantity != null ? !quantity.equals(product.quantity) : product.quantity != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = productId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (color != null ? color.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (material != null ? material.hashCode() : 0);
        result = 31 * result + (isGreen != null ? isGreen.hashCode() : 0);
        result = 31 * result + (entryPrice != null ? entryPrice.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (priceSale != null ? priceSale.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (isAvailable != null ? isAvailable.hashCode() : 0);
        result = 31 * result + categoryId;
        result = 31 * result + imageId;
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "categoryID", referencedColumnName = "categoryID")
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @ManyToOne
    @JoinColumn(name = "imageID", referencedColumnName = "imageID")
    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}
