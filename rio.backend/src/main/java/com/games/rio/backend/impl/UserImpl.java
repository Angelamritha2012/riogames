package com.games.rio.backend.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
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
	
	public Set<UserModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	

	public UserModel findById(String email) {
		
		Session session=sessionFactory.openSession();
		String hql = "FROM UserModel u WHERE u.email = '" + email +"'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return (UserModel) results.get(0);
		else
			return null;		
		
	}

public boolean validate(String email, String password) {
	Session session=sessionFactory.openSession();
	String hql = "FROM UseModel u WHERE u.email = '" + email +"' AND u.password ='" + password + "'" ;
	Query query = session.createQuery(hql);
	List results = query.list();
	if(results!=null)
		return true;
	
	else
		return false;		
	
}
	

}
