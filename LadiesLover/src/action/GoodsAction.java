package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Goods;
import service.GoodsService;

public class GoodsAction extends ActionSupport {
	private GoodsService goodsService;

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
}
