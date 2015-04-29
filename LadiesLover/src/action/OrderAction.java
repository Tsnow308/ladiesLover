package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Order;
import service.OrderService;

public class OrderAction extends ActionSupport {
	private OrderService orderService;

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
}
