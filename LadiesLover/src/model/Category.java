package model;

import java.util.HashSet;
import java.util.Set;

/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Set goodsesForCategory2Id = new HashSet(0);
	private Set goodsesForCategory1Id = new HashSet(0);
	private Set goodsesForCategory3Id = new HashSet(0);

	// Constructors

	/** default constructor */
	public Category() {
	}

	/** minimal constructor */
	public Category(String name) {
		this.name = name;
	}

	/** full constructor */
	public Category(String name, Set goodsesForCategory2Id,
			Set goodsesForCategory1Id, Set goodsesForCategory3Id) {
		this.name = name;
		this.goodsesForCategory2Id = goodsesForCategory2Id;
		this.goodsesForCategory1Id = goodsesForCategory1Id;
		this.goodsesForCategory3Id = goodsesForCategory3Id;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getGoodsesForCategory2Id() {
		return this.goodsesForCategory2Id;
	}

	public void setGoodsesForCategory2Id(Set goodsesForCategory2Id) {
		this.goodsesForCategory2Id = goodsesForCategory2Id;
	}

	public Set getGoodsesForCategory1Id() {
		return this.goodsesForCategory1Id;
	}

	public void setGoodsesForCategory1Id(Set goodsesForCategory1Id) {
		this.goodsesForCategory1Id = goodsesForCategory1Id;
	}

	public Set getGoodsesForCategory3Id() {
		return this.goodsesForCategory3Id;
	}

	public void setGoodsesForCategory3Id(Set goodsesForCategory3Id) {
		this.goodsesForCategory3Id = goodsesForCategory3Id;
	}

}