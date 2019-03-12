package com.cts.dao;

import java.util.List;

import com.cts.entity.Product;

public interface ProductDAO {

	void saveProduct(Product product);
	List<Product> listProducts();
	Product getProduct(int id);
	void deleteProduct(int id);
	}
