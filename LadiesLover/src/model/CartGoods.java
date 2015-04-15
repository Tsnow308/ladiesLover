package model;

/**
 * CartGoods entity. @author MyEclipse Persistence Tools
 */

public class CartGoods implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private Cart cart;
	private Integer amount;

	// Constructors

	/** default constructor */
	public CartGoods() {
	}

	/** full constructor */
	public CartGoods(Goods goods, Cart cart, Integer amount) {
		this.goods = goods;
		this.cart = cart;
		this.amount = amount;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Cart getCart() {
		return this.cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

}