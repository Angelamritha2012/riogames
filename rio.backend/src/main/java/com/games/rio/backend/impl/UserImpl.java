package com.games.rio.backend.impl;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.games.rio.backend.dao.UserDao;
import com.games.rio.backend.model.UserModel;

@Repository
public class UserImpl implements UserDao {
@Autowired
private SessionFactory sessionFactory;
	public void save(UserModel entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();
		// TODO Auto-generated method stub
		
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	public void update(UserModel entity) {
		// TODO Auto-generated method stub
		
	}

	public UserModel findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<UserModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
