package service;

import model.CartGoods;
import model.CartGoodsDAO;

public class CartGoodsService {
	private CartGoodsDAO cartGoodsDAO;

	public CartGoodsDAO getCartGoodsDAO() {
		return cartGoodsDAO;
	}

	public void setCartGoodsDAO(CartGoodsDAO cartGoodsDAO) {
		this.cartGoodsDAO = cartGoodsDAO;
	}
}
