package com.games.rio.backend.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

public class Cart {
	private int id;
	private static List<CartItem> items=null;
	private double grandTotal;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<CartItem> getItems() {
		if(items==null)
			items=new ArrayList<CartItem>();
		return items;
	}
	public void setItems(List<CartItem> items) {
		this.items = items;
	}
	public double getGrandTotal() {
		double grand=0.0;
		for(CartItem c : items){
			grand+=c.getCost();
		}
		this.grandTotal=grand;
		return grand;
	}
/*	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}*/	
	
}