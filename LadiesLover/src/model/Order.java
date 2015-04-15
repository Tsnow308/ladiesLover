package model;

import java.util.HashSet;
import java.util.Set;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Address address;
	private Float totalPrice;
	private Integer orderStatus;
	private Set orderGoodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(User user, Address address, Float totalPrice,
			Integer orderStatus) {
		this.user = user;
		this.address = address;
		this.totalPrice = totalPrice;
		this.orderStatus = orderStatus;
	}

	/** full constructor */
	public Order(User user, Address address, Float totalPrice,
			Integer orderStatus, Set orderGoodses) {
		this.user = user;
		this.address = address;
		this.totalPrice = totalPrice;
		this.orderStatus = orderStatus;
		this.orderGoodses = orderGoodses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Float getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getOrderStatus() {
		return this.orderStatus;
	}

	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Set getOrderGoodses() {
		return this.orderGoodses;
	}

	public void setOrderGoodses(Set orderGoodses) {
		this.orderGoodses = orderGoodses;
	}

}