package com.demo.jpa.entity;

import javax.persistence.*;


@Entity
@Table(name = "order_item", schema = "macbeth", catalog = "")
public class OrderItem {
    private int itemId;
    private int orderId;
    private int productId;
    private int quantity;
    private Order order;
    private Product product;

    @Id
    @Column(name = "itemID", nullable = false)
    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    @Basic
    @Column(name = "orderID", nullable = false, insertable = false, updatable = false)
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    @Basic
    @Column(name = "productID", nullable = false, insertable = false, updatable = false)
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderItem orderItem = (OrderItem) o;

        if (itemId != orderItem.itemId) return false;
        if (orderId != orderItem.orderId) return false;
        if (productId != orderItem.productId) return false;
        if (quantity != orderItem.quantity) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = itemId;
        result = 31 * result + orderId;
        result = 31 * result + productId;
        result = 31 * result + quantity;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "orderID", referencedColumnName = "orderID")
    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @ManyToOne
    @JoinColumn(name = "productID", referencedColumnName = "productID")
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
