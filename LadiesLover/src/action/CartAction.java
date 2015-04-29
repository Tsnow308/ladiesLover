package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Cart;
import service.CartService;

public class CartAction extends ActionSupport {
	private CartService cartService;

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
}
