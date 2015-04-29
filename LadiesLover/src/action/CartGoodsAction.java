package action;

import com.opensymphony.xwork2.ActionSupport;

import model.CartGoods;
import service.CartGoodsService;

public class CartGoodsAction extends ActionSupport {
	private CartGoodsService cartGoodsService;

	public CartGoodsService getCartGoodsService() {
		return cartGoodsService;
	}

	public void setCartGoodsService(CartGoodsService cartGoodsService) {
		this.cartGoodsService = cartGoodsService;
	}
}
