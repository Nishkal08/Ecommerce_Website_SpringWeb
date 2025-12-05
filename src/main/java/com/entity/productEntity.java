package com.entity;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class productEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer product_id;
	String name;
	String img;
	String description;
	Integer price;
	Integer stock_quantity;
	LocalDateTime created_at;
	
	@OneToMany(mappedBy="product")
	private List<orderItemsEntity> orderItems;
	
	public List<orderItemsEntity> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<orderItemsEntity> orderItems) {
		this.orderItems = orderItems;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Integer getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getStock_quantity() {
		return stock_quantity;
	}
	public void setStock_quantity(Integer stock_quantity) {
		this.stock_quantity = stock_quantity;
	}
	public LocalDateTime getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDateTime created_at) {
		this.created_at = created_at;
	}
	public LocalDateTime getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(LocalDateTime updated_at) {
		this.updated_at = updated_at;
	}
	LocalDateTime updated_at;

}
