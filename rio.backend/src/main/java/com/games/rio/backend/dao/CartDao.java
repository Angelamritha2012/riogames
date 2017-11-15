package com.games.rio.backend.dao;

import java.util.List;

import com.games.rio.backend.model.Cart;
import com.games.rio.backend.model.CartItem;

public interface CartDao {
	void addItem(CartItem item);
	void deleteItem(int id);
	List<CartItem> getAllItems();
	CartItem getItemById(int id);
}