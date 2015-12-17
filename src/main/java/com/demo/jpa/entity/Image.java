package com.demo.jpa.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Image {
    private int imageId;
    private String imageName1;
    private String imageName2;
    private String imageName3;
    private String imageName4;
    private String imageName5;
    private String imageName6;
    private List<Product> products;

    @Id
    @Column(name = "imageID", nullable = false)
    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    @Basic
    @Column(name = "imageName1", nullable = true, length = 255)
    public String getImageName1() {
        return imageName1;
    }

    public void setImageName1(String imageName1) {
        this.imageName1 = imageName1;
    }

    @Basic
    @Column(name = "imageName2", nullable = true, length = 255)
    public String getImageName2() {
        return imageName2;
    }

    public void setImageName2(String imageName2) {
        this.imageName2 = imageName2;
    }

    @Basic
    @Column(name = "imageName3", nullable = true, length = 255)
    public String getImageName3() {
        return imageName3;
    }

    public void setImageName3(String imageName3) {
        this.imageName3 = imageName3;
    }

    @Basic
    @Column(name = "imageName4", nullable = true, length = 255)
    public String getImageName4() {
        return imageName4;
    }

    public void setImageName4(String imageName4) {
        this.imageName4 = imageName4;
    }

    @Basic
    @Column(name = "imageName5", nullable = true, length = 255)
    public String getImageName5() {
        return imageName5;
    }

    public void setImageName5(String imageName5) {
        this.imageName5 = imageName5;
    }

    @Basic
    @Column(name = "imageName6", nullable = true, length = 255)
    public String getImageName6() {
        return imageName6;
    }

    public void setImageName6(String imageName6) {
        this.imageName6 = imageName6;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Image image = (Image) o;

        if (imageId != image.imageId) return false;
        if (imageName1 != null ? !imageName1.equals(image.imageName1) : image.imageName1 != null) return false;
        if (imageName2 != null ? !imageName2.equals(image.imageName2) : image.imageName2 != null) return false;
        if (imageName3 != null ? !imageName3.equals(image.imageName3) : image.imageName3 != null) return false;
        if (imageName4 != null ? !imageName4.equals(image.imageName4) : image.imageName4 != null) return false;
        if (imageName5 != null ? !imageName5.equals(image.imageName5) : image.imageName5 != null) return false;
        if (imageName6 != null ? !imageName6.equals(image.imageName6) : image.imageName6 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = imageId;
        result = 31 * result + (imageName1 != null ? imageName1.hashCode() : 0);
        result = 31 * result + (imageName2 != null ? imageName2.hashCode() : 0);
        result = 31 * result + (imageName3 != null ? imageName3.hashCode() : 0);
        result = 31 * result + (imageName4 != null ? imageName4.hashCode() : 0);
        result = 31 * result + (imageName5 != null ? imageName5.hashCode() : 0);
        result = 31 * result + (imageName6 != null ? imageName6.hashCode() : 0);
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
