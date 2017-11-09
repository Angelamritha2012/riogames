package com.games.rio.backend.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class CartItem implements Serializable{

private static final long serialVersionUID = -4314427089896169685L;
	
	private ProductModel product;
	private int quantity;
	private BigDecimal totalPrice;
	
	public ProductModel getProduct() {
		return product;
	}
	public void setProduct(ProductModel product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}	

}
