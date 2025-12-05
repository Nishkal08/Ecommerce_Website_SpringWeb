package com.entity;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="users")
public class userEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Integer userId;
	private String username;
	private String email;
	private String password;
	@Temporal(TemporalType.TIMESTAMP)
	private LocalDateTime created_at;
	@Temporal(TemporalType.TIMESTAMP)
	private LocalDateTime last_login;
	private String token;
	private LocalDateTime tokenCreatedOn;
	private String role;
	private String address;
	private String country;
	private String zipcode;
	private String state;
	private String city;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public LocalDateTime getTokenCreatedOn() {
		return tokenCreatedOn;
	}
	public void setTokenCreatedOn(LocalDateTime tokenCreatedOn) {
		this.tokenCreatedOn = tokenCreatedOn;
	}
	
	@OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)  //mappedBy --> Will look for user (obejct of userEntity) in order for mapping users and orders
    private List<orderEntity> orders ; //Returns list of orders for corresponding user
	
    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<orderItemsEntity> orderItems;
    
    
	public List<orderItemsEntity> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<orderItemsEntity> orderItems) {
		this.orderItems = orderItems;
	}
	public List<orderEntity> getOrders() {
		return orders;
	}
	public void setOrders(List<orderEntity> orders) {
		this.orders = orders;
	}
	public Integer getUserId() {
		return userId; 
	}
	public void setUserId(Integer userId) {
		this.userId= userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LocalDateTime getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDateTime localDateTime) {
		this.created_at = localDateTime;
	}
	public LocalDateTime getLast_login() {
		return last_login;
	}
	public void setLast_login(LocalDateTime last_login) {
		this.last_login = last_login;
	}
}
