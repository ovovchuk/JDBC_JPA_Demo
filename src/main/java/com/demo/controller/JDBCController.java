package com.demo.controller;

import com.demo.jdbc.dao.ProductDAO;
import com.demo.jdbc.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.List;

/**
 * JDBCController
 *
 * Created by ovovchuk on 13/12/2015.
 */
@Controller
@RequestMapping("/jdbc")
public class JDBCController {
    private ProductDAO productDAO;

    @Autowired
    public JDBCController(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        List<Product> products = productDAO.findAll();

        model.addAttribute("products", products);

        return "jdbc";
    }

    @RequestMapping(value = "/size", method = RequestMethod.GET)
    public String size(@RequestParam(value = "s", required = false, defaultValue = "10") String size,
                       Model model) {
        List<Product> productsBySize = productDAO.findBySize(size);

        model.addAttribute("products", productsBySize);

        return "jdbc";
    }

    @RequestMapping(value = "/func", method = RequestMethod.GET)
    public String func(@RequestParam(value = "id", required = false, defaultValue = "2") String inId, Model model) {
        String name = productDAO.findNameById(Integer.parseInt(inId));

        model.addAttribute("name", name);

        return "func";
    }

    @RequestMapping(value = "/named", method = RequestMethod.GET)
    public String named(@RequestParam(value = "id", required = false, defaultValue = "2") String inId, Model model) {
        BigDecimal price = productDAO.findPriceByProductId(Integer.parseInt(inId));

        model.addAttribute("name", price.toString());

        return "func";
    }
}
