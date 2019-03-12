package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.dao.ProductDAO;
import com.cts.entity.Product;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public void saveProduct(Product product) {
		productDAO.saveProduct(product);

	}

	@Override
	@org.springframework.transaction.annotation.Transactional
	public List<Product> list() {
	return productDAO.listProducts();
		
	}

	@Override
	public Product getProduct(int id) {
		
		Product product=productDAO.getProduct(id);
		return product;
	}

	@Override
	public void deleteProduct(int id) {
			productDAO.deleteProduct(id);
		
	}


}
