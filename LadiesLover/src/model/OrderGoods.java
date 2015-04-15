package model;

/**
 * OrderGoods entity. @author MyEclipse Persistence Tools
 */

public class OrderGoods implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private Order order;
	private Integer amount;
	private Integer goodsSize;
	private String goodsColor;

	// Constructors

	/** default constructor */
	public OrderGoods() {
	}

	/** full constructor */
	public OrderGoods(Goods goods, Order order, Integer amount,
			Integer goodsSize, String goodsColor) {
		this.goods = goods;
		this.order = order;
		this.amount = amount;
		this.goodsSize = goodsSize;
		this.goodsColor = goodsColor;
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

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Integer getGoodsSize() {
		return this.goodsSize;
	}

	public void setGoodsSize(Integer goodsSize) {
		this.goodsSize = goodsSize;
	}

	public String getGoodsColor() {
		return this.goodsColor;
	}

	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}

}