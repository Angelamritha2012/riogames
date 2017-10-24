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
		@Column(name="Product_image")
		private String image;
		@Column(name="Product_description")
		private String description;
		@Column(name="Product_quantity")
		private String quantity;
		@Column(name="Product_supplierid")
		private int supplierid;
		

		public int getSupplierid() {
			return supplierid;
		}
		public void setSupplierid(int supplierid) {
			this.supplierid = supplierid;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getQuantity() {
			return quantity;
		}
		public void setQuantity(String quantity) {
			this.quantity = quantity;
		}
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
