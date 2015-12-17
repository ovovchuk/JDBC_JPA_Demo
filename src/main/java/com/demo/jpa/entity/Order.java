package com.demo.jpa.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;


@Entity
@Table(name = "t_order")
public class Order {
    private int orderId;
    private int totalQuantity;
    private BigDecimal subtotalPrice;
    private BigDecimal totalPrice;
    private Date date;
    private String paymentMethod;
    private String status;
    private String discountCode;
    private String state;
    private String city;
    private String address;
    private String zipCode;
    private int userId;
    private User user;
    private List<OrderItem> orderItems;

    @Id
    @Column(name = "orderID", nullable = false)
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    @Basic
    @Column(name = "total_quantity", nullable = false)
    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    @Basic
    @Column(name = "subtotal_price", nullable = false, precision = 2)
    public BigDecimal getSubtotalPrice() {
        return subtotalPrice;
    }

    public void setSubtotalPrice(BigDecimal subtotalPrice) {
        this.subtotalPrice = subtotalPrice;
    }

    @Basic
    @Column(name = "total_price", nullable = false, precision = 2)
    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Basic
    @Column(name = "date", nullable = false)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Basic
    @Column(name = "payment_method", nullable = false, length = 20)
    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    @Basic
    @Column(name = "status", nullable = true, length = 40)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "discountCode", nullable = true, length = 10)
    public String getDiscountCode() {
        return discountCode;
    }

    public void setDiscountCode(String discountCode) {
        this.discountCode = discountCode;
    }

    @Basic
    @Column(name = "state", nullable = false, length = 255)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "city", nullable = false, length = 255)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 255)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "zipCode", nullable = true, length = 20)
    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Basic
    @Column(name = "userID", nullable = false, insertable = false, updatable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (orderId != order.orderId) return false;
        if (totalQuantity != order.totalQuantity) return false;
        if (userId != order.userId) return false;
        if (subtotalPrice != null ? !subtotalPrice.equals(order.subtotalPrice) : order.subtotalPrice != null)
            return false;
        if (totalPrice != null ? !totalPrice.equals(order.totalPrice) : order.totalPrice != null) return false;
        if (date != null ? !date.equals(order.date) : order.date != null) return false;
        if (paymentMethod != null ? !paymentMethod.equals(order.paymentMethod) : order.paymentMethod != null)
            return false;
        if (status != null ? !status.equals(order.status) : order.status != null) return false;
        if (discountCode != null ? !discountCode.equals(order.discountCode) : order.discountCode != null) return false;
        if (state != null ? !state.equals(order.state) : order.state != null) return false;
        if (city != null ? !city.equals(order.city) : order.city != null) return false;
        if (address != null ? !address.equals(order.address) : order.address != null) return false;
        if (zipCode != null ? !zipCode.equals(order.zipCode) : order.zipCode != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = orderId;
        result = 31 * result + totalQuantity;
        result = 31 * result + (subtotalPrice != null ? subtotalPrice.hashCode() : 0);
        result = 31 * result + (totalPrice != null ? totalPrice.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (paymentMethod != null ? paymentMethod.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (discountCode != null ? discountCode.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (zipCode != null ? zipCode.hashCode() : 0);
        result = 31 * result + userId;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "userID", referencedColumnName = "userID")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}
