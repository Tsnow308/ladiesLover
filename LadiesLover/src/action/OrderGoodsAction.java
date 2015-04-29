package action;

import com.opensymphony.xwork2.ActionSupport;

import model.OrderGoods;
import service.OrderGoodsService;

public class OrderGoodsAction extends ActionSupport {
	private OrderGoodsService orderGoodsService;

	public OrderGoodsService getOrderGoodsService() {
		return orderGoodsService;
	}

	public void setOrderGoodsService(OrderGoodsService orderGoodsService) {
		this.orderGoodsService = orderGoodsService;
	}
}
