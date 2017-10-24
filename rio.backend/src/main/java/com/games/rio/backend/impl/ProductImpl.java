package com.games.rio.backend.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
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
			return (ProductModel)sessionFactory.openSession().get(ProductModel.class,id);
			// TODO Auto-generated method stub
			
		}
		public List<ProductModel> findAll() {
			
				// TODO Auto-generated method stub
				Session s=sessionFactory.openSession();
				s.beginTransaction();
				Query query=s.createQuery("from Product");
				List<ProductModel> list=query.list();
				System.out.println(list);
				s.getTransaction().commit();
				return list;
			}
			
}