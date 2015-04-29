package service;

import model.OrderGoods;
import model.OrderGoodsDAO;

public class OrderGoodsService {
	private OrderGoodsDAO orderGoodsDAO;

	public OrderGoodsDAO getOrderGoodsDAO() {
		return orderGoodsDAO;
	}

	public void setOrderGoodsDAO(OrderGoodsDAO orderGoodsDAO) {
		this.orderGoodsDAO = orderGoodsDAO;
	}
}
