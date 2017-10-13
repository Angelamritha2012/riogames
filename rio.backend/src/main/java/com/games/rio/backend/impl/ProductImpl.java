package com.games.rio.backend.impl;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.games.rio.backend.dao.ProductDao;

import com.games.rio.backend.model.ProductModel;

@Repository
public class ProductImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
		public void save(ProductModel entity) {
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			session.save(entity);
			session.getTransaction().commit();
			session.close();
}
		public void delete(int id) {
			// TODO Auto-generated method stub
			
		}
		public void update(ProductModel entity) {
			// TODO Auto-generated method stub
			
		}
		public ProductModel findById(int id) {
			// TODO Auto-generated method stub
			return null;
		}
		public Set<ProductModel> findAll() {
			// TODO Auto-generated method stub
			return null;
		}
}