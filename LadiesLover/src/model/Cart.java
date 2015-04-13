package model;

import java.util.HashSet;
import java.util.Set;

/**
 * Cart entity. @author MyEclipse Persistence Tools
 */

public class Cart implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Integer totalPrice;
	private Set cartGoodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Cart() {
	}

	/** minimal constructor */
	public Cart(User user, Integer totalPrice) {
		this.user = user;
		this.totalPrice = totalPrice;
	}

	/** full constructor */
	public Cart(User user, Integer totalPrice, Set cartGoodses) {
		this.user = user;
		this.totalPrice = totalPrice;
		this.cartGoodses = cartGoodses;
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

	public Integer getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Set getCartGoodses() {
		return this.cartGoodses;
	}

	public void setCartGoodses(Set cartGoodses) {
		this.cartGoodses = cartGoodses;
	}

}