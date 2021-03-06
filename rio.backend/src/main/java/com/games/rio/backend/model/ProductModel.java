package com.games.rio.backend.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="Product")
public class ProductModel {
		@Id
		@GeneratedValue
		//@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="Product_pid")
		private int pid;
/*		@Column(name="Product_sid")
*/		@ManyToOne
		private Supplier sid;
		@Column(name="Product_pimage")
        private String pimage;
		@Column(name="Product_pname")
        private String pname;
		@ManyToOne
		private Category cat;
		@Column(name="Product_pdescrip")
        private String pdescrip;
		@Column(name="Product_pquantity")
        private int pquantity;
		@Column(name="Product_pprice")
        private float pprice;
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public Supplier getSid() {
			return sid;
		}
		public void setSid(Supplier sid) {
			this.sid = sid;
		}
		public String getPimage() {
			return pimage;
		}
		public void setPimage(String pimage) {
			this.pimage = pimage;
		}
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public Category getCat() {
			return cat;
		}
		public void setCat(Category cat) {
			this.cat = cat;
		}
		public String getPdescrip() {
			return pdescrip;
		}
		public void setPdescrip(String pdescrip) {
			this.pdescrip = pdescrip;
		}
		public int getPquantity() {
			return pquantity;
		}
		public void setPquantity(int pquantity) {
			this.pquantity = pquantity;
		}
		public float getPprice() {
			return pprice;
		}
		public void setPprice(float pprice) {
			this.pprice = pprice;
		}
		
		
		

	}
