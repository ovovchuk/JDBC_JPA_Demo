package com.demo.jpa.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Category {
    private int categoryId;
    private String category;
    private List<Product> products;

    @Id
    @Column(name = "categoryID", nullable = false)
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Basic
    @Column(name = "category", nullable = true, length = 30)
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Category category1 = (Category) o;

        if (categoryId != category1.categoryId) return false;
        if (category != null ? !category.equals(category1.category) : category1.category != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = categoryId;
        result = 31 * result + (category != null ? category.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
