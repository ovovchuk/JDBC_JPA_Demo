package com.demo.controller;

import com.demo.jpa.entity.Product;
import com.demo.jpa.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Controller
@RequestMapping("/jpa")
public class JPAController {
    private ProductRepository productRepository;

    @Autowired
    public JPAController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        Iterable<Product> products = productRepository.findAll();

        model.addAttribute("products", products);

        return "jpa";
    }

    @RequestMapping("/conv/{id}")
    public String productsById(@PathVariable("id") Product product, Model model) {

        model.addAttribute("name", product.getName() + " - " + product.getSize() + " - " + product.getPrice().toString());

        return "func";
    }

    @RequestMapping(value = "/{page}/{items}", method = RequestMethod.GET)
    public String indexPageable(@PathVariable Integer page, @PathVariable Integer items, Model model) {
        PageRequest pageRequest = new PageRequest(page, items);

        List<Product> products = productRepository.findBySize("10", pageRequest);

        model.addAttribute("products", products);

        return "jpa";
    }

    @RequestMapping(value = "/size/{size}", method = RequestMethod.GET)
    public String size(@PathVariable String size, Model model) {
        List<Product> products = productRepository.findBySize(size);

        model.addAttribute("products", products);

        return "jpa";
    }

    @RequestMapping(value = "/green/{size}", method = RequestMethod.GET)
    public String greenBySize(@PathVariable String size, Model model) {
        List<Product> products = productRepository.findBySizeAndGreen(size, true);

        model.addAttribute("products", products);

        return "jpa";
    }

    @RequestMapping(value = "/cat/{id}", method = RequestMethod.GET)
    public String productsByCategoryId(@PathVariable int id, Model model) {
        Stream<Product> products = productRepository.findByCategory(id);

        List<Product> greenM = products.filter(product -> (
                product.getSize().equals("M") || product.getSize().equals("10"))
                && product.getGreen()).collect(Collectors.toList()
        );

        // Need to close Stream
        products.close();

        model.addAttribute("products", greenM);

        return "jpa";
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String deleteProductById(@PathVariable Integer id, Model model) {
        productRepository.delete(id);

        model.addAttribute("name", "You have successfully deleted product with ID " + id);

        return "func";
    }
}
