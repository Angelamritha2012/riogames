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
Session s=sessionFactory.openSession();
s.beginTransaction();
s.save(entity);
s.getTransaction().commit();
s.close();		
}

public void update(ProductModel entity) {
	// TODO Auto-generated method stub
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	s.save(entity);
	s.getTransaction().commit();
	s.close();	
}
public List<ProductModel> findAll() {
	// TODO Auto-generated method stub
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	Query query=s.createQuery("from ProductModel");
	List<ProductModel> list=query.list();
	System.out.println(list);
	s.getTransaction().commit();
	return list;
}
public void delete(int id) {
	Session s=sessionFactory.openSession();
	 	String hql = "DELETE FROM ProductModel p "  + 
	              "WHERE p.pid ='" + id +"'" ;
	 		Query query = s.createQuery(hql);
	 		query.executeUpdate();
	 		//s.getTransaction().commit();
	 		s.close();
	
}

/*public Product findById(String id) {
	return (Product)sessionFactory.openSession().get(Product.class,id);
}*/

public ProductModel findById(int id) {
	return (ProductModel)sessionFactory.openSession().get(ProductModel.class,id);
}
}