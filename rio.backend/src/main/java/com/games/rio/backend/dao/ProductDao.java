package com.games.rio.backend.dao;

import java.util.List;
import java.util.Set;

import com.games.rio.backend.model.ProductModel;


public interface ProductDao {
	public void save(ProductModel entity );//User is the Model Class Name Not a Table Name
	public void delete(int id);
	public void update(ProductModel entity);
	public ProductModel findById(int id);
	//public boolean validate(String email,String password);
	public List<ProductModel> findAll();
}
