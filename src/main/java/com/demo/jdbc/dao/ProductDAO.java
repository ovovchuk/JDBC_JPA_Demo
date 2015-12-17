package com.demo.jdbc.dao;

import com.demo.jdbc.CustomMySQLErrorCodesTranslator;
import com.demo.jdbc.UpdateProduct;
import com.demo.jdbc.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ProductDAO {

    private JdbcTemplate jdbcTemplate;
    private DataSource dataSource;
    private UpdateProduct updateProduct;

    @Autowired
    public ProductDAO(JdbcTemplate jdbcTemplate, DataSource dataSource) {
        this.jdbcTemplate = jdbcTemplate;
        this.dataSource = dataSource;
        this.updateProduct = new UpdateProduct(dataSource);
    }

    public List<Product> findAll() {
        return jdbcTemplate.query(
                "SELECT * FROM product",
                (rs, rowNum) -> {
                    Product product = new Product(
                            rs.getString("name"),
                            rs.getString("color"),
                            rs.getInt("imageID"),
                            rs.getString("size"),
                            rs.getString("material"),
                            rs.getByte("isGreen"),
                            new BigDecimal(Double.toString(rs.getDouble("entryPrice"))),
                            new BigDecimal(Double.toString(rs.getDouble("price"))),
                            new BigDecimal(Double.toString(rs.getDouble("priceSale"))),
                            rs.getString("description"),
                            rs.getByte("isAvailable"),
                            rs.getInt("categoryID"),
                            rs.getInt("quantity")
                    );
                    product.setProductID(rs.getInt("productID"));

                    return product;
                }
        );
    }

    public List<Product> findBySize(String size) {
        List<Product> products = new ArrayList<>();
        Connection con = null;
        try {
            con = dataSource.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM product WHERE size = ?");
            ps.setString(1, size);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product(
                        rs.getString("name"),
                        rs.getString("color"),
                        rs.getInt("imageID"),
                        rs.getString("size"),
                        rs.getString("material"),
                        rs.getByte("isGreen"),
                        new BigDecimal(Double.toString(rs.getDouble("entryPrice"))),
                        new BigDecimal(Double.toString(rs.getDouble("price"))),
                        new BigDecimal(Double.toString(rs.getDouble("priceSale"))),
                        rs.getString("description"),
                        rs.getByte("isAvailable"),
                        rs.getInt("categoryID"),
                        rs.getInt("quantity"));
                product.setProductID(rs.getInt("productID"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return products;
    }

    public String findNameById(int id) {
        Map<String, Object> map = new HashMap<>();
        map.put("inId", id);

        SimpleJdbcCall call = new SimpleJdbcCall(jdbcTemplate);
        call.withFunctionName("getProductNameById");

        return call.executeFunction(String.class, map);
    }

    /**
     * Named parameter query
     *
     * @param id
     * @return BigDecimal
     */
    public BigDecimal findPriceByProductId(int id) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        CustomMySQLErrorCodesTranslator errorCodesTranslator = new CustomMySQLErrorCodesTranslator();
        errorCodesTranslator.setDataSource(dataSource);

        jdbcTemplate.setExceptionTranslator(errorCodesTranslator);

        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);

        Map<String, Object> namedParameters = new HashMap<>();
        namedParameters.put("ID", id);

        return namedParameterJdbcTemplate.queryForObject(
                "SELECT price FROM product WHERE productID = :ID",
                namedParameters,
                BigDecimal.class);
    }

    public void update(Product product) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("name", product.getName());
        paramMap.put("color", product.getColor());
        paramMap.put("imageID", product.getImageID());
        paramMap.put("size", product.getSize());
        paramMap.put("material", product.getMaterial());
        paramMap.put("isGreen", product.getIsGreen());
        paramMap.put("entryPrice", product.getEntryPrice());
        paramMap.put("price", product.getPrice());
        paramMap.put("priceSale", product.getPriceSale());
        paramMap.put("description", product.getDescription());
        paramMap.put("isAvailable", product.getIsAvailable());
        paramMap.put("categoryID", product.getCategoryID());
        paramMap.put("quantity", product.getQuantity());
        paramMap.put("productID", product.getProductID());

        updateProduct.updateByNamedParam(paramMap);
    }
}
