package com.games.rio.backend.dao;

import java.util.Set;

import com.games.rio.backend.model.UserModel;


public interface UserDao {
	
	public void save(UserModel entity);
	public void delete(int id);
	public void update(UserModel entity);
	public UserModel findById(String email);
	public boolean validate(String email, String password);
	public Set<UserModel> findAll();
	

}
