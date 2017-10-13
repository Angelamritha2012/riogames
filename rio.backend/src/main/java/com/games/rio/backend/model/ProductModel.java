package com.games.rio.backend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Product")
public class ProductModel {
		@Id
		@GeneratedValue
		//@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="Product_id")
		private int id;
		@Column(name="Product_name")
		private String name;
		@Column(name="Product_price")
		private String price;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		
}
