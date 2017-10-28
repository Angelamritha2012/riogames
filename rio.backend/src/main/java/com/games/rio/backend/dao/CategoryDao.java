package com.games.rio.backend.dao;

import java.util.List;

import com.games.rio.backend.model.Category;

public interface CategoryDao {
	
	public void save(Category entity);
	public void delete(int cid);
	public void update(Category entity);
	public Category findById(int cid);
	public List<Category> findAll();

}
