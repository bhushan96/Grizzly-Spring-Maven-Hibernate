package com.cts.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void saveProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		}

	@Override
	public List<Product> listProducts() {
		Session session=sessionFactory.getCurrentSession();
		Query qry=session.createQuery("from Product p");
		List<Product> l=qry.getResultList();
		return l;
		
	}

	@Override
	@Transactional
	public Product getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product p=session.get(Product.class, id);
		return p;
	}

	@Override
	@Transactional
	public void deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=session.get(Product.class, id);
		session.remove(product);
			

	}


}
