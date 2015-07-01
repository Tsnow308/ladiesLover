package service;

import java.util.List;

import model.Goods;
import model.GoodsDAO;

public class GoodsService {
	private GoodsDAO goodsDAO;

	public GoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	public List getCatalog(){
		List result = goodsDAO.findAll();
		if(result != null){
			return result;
		}
		else{
			return null;
		}
	}
	
	public Goods getGoods(int id){
		Goods result = goodsDAO.findById(id);
		if(result != null){
			return result;
		}
		else{
			return null;
		}
	}
}
