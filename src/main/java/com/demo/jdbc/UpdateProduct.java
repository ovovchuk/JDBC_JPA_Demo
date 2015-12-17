package com.demo.jdbc;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.SqlUpdate;

import javax.sql.DataSource;
import java.sql.Types;


public class UpdateProduct extends SqlUpdate {
    private static final String SQL = "UPDATE product SET name = :name, color = :color, imageID = :imageID, size = :size, material = :material, isGreen = :isGreen, entryPrice = :entrPrice, price = :price, priceSale = :priceSale, description = :description, isAvailable = :isAvailable, categoryID = :categoryID, quantity = :quantity WHERE productID = :productID";

    public UpdateProduct(DataSource dataSource) {
        super(dataSource, SQL);
        super.declareParameter(new SqlParameter("name", Types.VARCHAR));
        super.declareParameter(new SqlParameter("color", Types.VARCHAR));
        super.declareParameter(new SqlParameter("imageID", Types.INTEGER));
        super.declareParameter(new SqlParameter("size", Types.VARCHAR));
        super.declareParameter(new SqlParameter("material", Types.VARCHAR));
        super.declareParameter(new SqlParameter("isGreen", Types.TINYINT));
        super.declareParameter(new SqlParameter("entryPrice", Types.DECIMAL));
        super.declareParameter(new SqlParameter("price", Types.DECIMAL));
        super.declareParameter(new SqlParameter("priceSale", Types.DECIMAL));
        super.declareParameter(new SqlParameter("description", Types.LONGNVARCHAR));
        super.declareParameter(new SqlParameter("isAvailable", Types.DECIMAL));
        super.declareParameter(new SqlParameter("categoryID", Types.DECIMAL));
        super.declareParameter(new SqlParameter("quantity", Types.DECIMAL));
    }
}
