package com.games.rio.backend.dao;

import java.util.List;

import com.games.rio.backend.model.Supplier;

public interface SupplierDao {
	public void save(Supplier entity);
	public void delete(String id);
	public void update(Supplier entity);
	public Supplier findById(String id);
	public List<Supplier> findAll();

}
