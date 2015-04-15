package model;

import java.util.HashSet;
import java.util.Set;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer id;
	private Category categoryByCategory3Id;
	private Category categoryByCategory2Id;
	private Category categoryByCategory1Id;
	private String name;
	private Integer price;
	private Integer storage;
	private String description;
	private String imgAddress;
	private Set cartGoodses = new HashSet(0);
	private Set orderGoodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** minimal constructor */
	public Goods(String name, Integer price, Integer storage) {
		this.name = name;
		this.price = price;
		this.storage = storage;
	}

	/** full constructor */
	public Goods(Category categoryByCategory3Id,
			Category categoryByCategory2Id, Category categoryByCategory1Id,
			String name, Integer price, Integer storage, String description,
			String imgAddress, Set cartGoodses, Set orderGoodses) {
		this.categoryByCategory3Id = categoryByCategory3Id;
		this.categoryByCategory2Id = categoryByCategory2Id;
		this.categoryByCategory1Id = categoryByCategory1Id;
		this.name = name;
		this.price = price;
		this.storage = storage;
		this.description = description;
		this.imgAddress = imgAddress;
		this.cartGoodses = cartGoodses;
		this.orderGoodses = orderGoodses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Category getCategoryByCategory3Id() {
		return this.categoryByCategory3Id;
	}

	public void setCategoryByCategory3Id(Category categoryByCategory3Id) {
		this.categoryByCategory3Id = categoryByCategory3Id;
	}

	public Category getCategoryByCategory2Id() {
		return this.categoryByCategory2Id;
	}

	public void setCategoryByCategory2Id(Category categoryByCategory2Id) {
		this.categoryByCategory2Id = categoryByCategory2Id;
	}

	public Category getCategoryByCategory1Id() {
		return this.categoryByCategory1Id;
	}

	public void setCategoryByCategory1Id(Category categoryByCategory1Id) {
		this.categoryByCategory1Id = categoryByCategory1Id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getStorage() {
		return this.storage;
	}

	public void setStorage(Integer storage) {
		this.storage = storage;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImgAddress() {
		return this.imgAddress;
	}

	public void setImgAddress(String imgAddress) {
		this.imgAddress = imgAddress;
	}

	public Set getCartGoodses() {
		return this.cartGoodses;
	}

	public void setCartGoodses(Set cartGoodses) {
		this.cartGoodses = cartGoodses;
	}

	public Set getOrderGoodses() {
		return this.orderGoodses;
	}

	public void setOrderGoodses(Set orderGoodses) {
		this.orderGoodses = orderGoodses;
	}

}