package com.cts.service;

import java.util.List;

import com.cts.entity.Product;

public interface ProductService {
	void saveProduct(Product product);
	List<Product> list();
	Product getProduct(int id);
	void deleteProduct(int id);

}
