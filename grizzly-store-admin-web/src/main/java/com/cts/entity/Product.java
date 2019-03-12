package com.cts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="Product")
public class Product {

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
int id;

@Column(name="category")
String category;

@Column(name="rating")
float rating;

@Column(name="name")
String name;

@Column(name="brand")
String brand;

@Column(name="description")
String description;

@Column(name="price")
float price;

public Product(int id, String category, float rating, String name, String brand, String description, float price) {
	super();
	this.id = id;
	this.category = category;
	this.rating = rating;
	this.name = name;
	this.brand = brand;
	this.description = description;
	this.price = price;
}

public Product(String category, float rating, String name, String brand, String description, float price) {
	super();
	this.category = category;
	this.rating = rating;
	this.name = name;
	this.brand = brand;
	this.description = description;
	this.price = price;
}

public Product() {
	super();
	// TODO Auto-generated constructor stub
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public float getRating() {
	return rating;
}

public void setRating(float rating) {
	this.rating = rating;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getBrand() {
	return brand;
}

public void setBrand(String brand) {
	this.brand = brand;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public float getPrice() {
	return price;
}

public void setPrice(float price) {
	this.price = price;
}

@Override
public String toString() {
	return "Product [id=" + id + ", category=" + category + ", rating=" + rating + ", name=" + name + ", brand=" + brand
			+ ", description=" + description + ", price=" + price + "]";
}
}
