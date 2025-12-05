package com.entity;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="orders")
public class orderEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer order_id;
	
	
	@ManyToOne
	@JoinColumn(name="user_id") //Join users and orders on user_id as foreign key(reference)
	private userEntity user;
	
	LocalDateTime order_date;
	Integer total_amount;
	String status;	
	
	@OneToMany(mappedBy="order")
	private List<orderItemsEntity> orderItems;
	
	
	
	
	public List<orderItemsEntity> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<orderItemsEntity> orderItems) {
		this.orderItems = orderItems;
	}
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public userEntity getUser() {
		return user;
	}
	public void setUser(userEntity user) {
		this.user = user;
	}
	
	public LocalDateTime getOrder_date() {
		return order_date;
	}
	public void setOrder_date(LocalDateTime order_date) {
		this.order_date = order_date;
	}
	public Integer getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}

