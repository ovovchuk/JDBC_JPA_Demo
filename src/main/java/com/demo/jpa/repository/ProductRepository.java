package com.demo.jpa.repository;

import com.demo.jpa.entity.Category;
import com.demo.jpa.entity.Product;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.stream.Stream;


@Repository
public interface ProductRepository extends CrudRepository<Product, Integer> {

    List<Product> findBySize(String size);

    List<Product> findBySizeAndGreen(String size, Boolean isGreen);

    List<Product> findBySize(String size, Pageable pageable);

    @Query("SELECT P FROM Product P WHERE P.categoryId = ?1")
    Stream<Product> findByCategory(int categoryID);
}
