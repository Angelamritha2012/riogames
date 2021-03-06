package com.games.rio.backend.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.games.rio.backend.dao.CategoryDao;
import com.games.rio.backend.model.Category;
import com.games.rio.backend.model.ProductModel;


@Repository
public class CategoryImpl implements CategoryDao{
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Category entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();
		
	}

	public void delete(int cid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(findById(cid));
		session.getTransaction().commit();
		session.close();
		
	}

	public void update(Category entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(entity);
		session.getTransaction().commit();
		session.close();
		
	}

	public Category findById(int cid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(Category.class);
		criteria.add(Restrictions.eq("cid", new Integer(cid)));
		List list=criteria.list();
		session.getTransaction().commit();
		session.close();
		if(!list.isEmpty()){
			return (Category)list.get(0);
		}else{
			return null;
		}
	}

	public List<Category> findAll() {
		Session session=sessionFactory.openSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> results =  query.list();
		System.out.println(results);
		//session.getTransaction().commit();
		return results;
	}
}
