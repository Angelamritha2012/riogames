package com.games.rio.backend.dao;

import java.util.List;
import java.util.Set;

import com.games.rio.backend.model.ProductModel;


public interface ProductDao {
	public void save(ProductModel entity);
	public void delete(int id);
	public void update(ProductModel entity);
	public ProductModel findById(int id);
	public List<ProductModel> findAll();


}
