package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="order_items")
public class orderItemsEntity {
	
/*
 *Users  --->  order_items  <--- Products
  1 - M		  (Bridge Table)	 M - 1

1 User can have N orders				1 Product Belongs To one order
1 order belogs to 1 User				1 order can have Multiple Products

*/
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer item_id ;

	@ManyToOne
	@JoinColumn(name="order_id")
	private orderEntity order;
	
	@ManyToOne
	@JoinColumn(name="user_id",unique=false)
	private userEntity user;
	
	public userEntity getUser() {
		return user;
	}
	public void setUser(userEntity user) {
		this.user = user;
	}
	public Integer getItem_id() {
		return item_id;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public orderEntity getOrder() {
		return order;
	}
	public void setOrder(orderEntity order) {
		this.order = order;
	}
	public productEntity getProduct() {
		return product;
	}
	public void setProduct(productEntity product) {
		this.product = product;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getItem_price() {
		return item_price;
	}
	public void setItem_price(Integer item_price) {
		this.item_price = item_price;
	}
	public Integer getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(Integer subtotal) {
		this.subtotal = subtotal;
	}
	@ManyToOne
	@JoinColumn(name="product_id")
	private productEntity product;
	
	Integer quantity;
	Integer item_price;
	Integer subtotal;

}
