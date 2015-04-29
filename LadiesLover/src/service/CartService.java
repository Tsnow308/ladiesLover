package service;

import model.Cart;
import model.CartDAO;

public class CartService {
	private CartDAO cartDAO;

	public CartDAO getCartDAO() {
		return cartDAO;
	}

	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}
}
