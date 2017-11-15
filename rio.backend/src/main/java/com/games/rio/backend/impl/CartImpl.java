package com.games.rio.backend.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.games.rio.backend.dao.CartDao;
import com.games.rio.backend.model.Cart;
import com.games.rio.backend.model.CartItem;

public class CartImpl implements CartDao{
	private static Cart cart=new Cart();
	public void addItem(CartItem item) {	
		cart.getItems().add(item);
	}

	public void deleteItem(int id) {
		cart.getItems().remove(getItemById(id));		
	}	

	public List<CartItem> getAllItems() {
		return cart.getItems();
	}

	public CartItem getItemById(int id) {
		List<CartItem> items=cart.getItems();
		CartItem item=null;
		for(CartItem c : items){
			if(c.getId()==id)
				item=c;			
		}
		return item;
	}

}