package cn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.GoodsMapper;
import cn.entity.Goods;
import cn.entity.GoodsType;
import cn.service.GoodsService;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	GoodsMapper goodsMapper;
	@Override
	public List<Goods> getGoodsList() {
		return goodsMapper.getGoodsList();
	}
	@Override
	public int insert(Goods goods) {
		// TODO Auto-generated method stub
		return goodsMapper.insert(goods);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.deleteByPrimaryKey(id);
	}
	@Override
	public Goods selectByName(String goodsName) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByName(goodsName);
	}
	@Override
	public int updateByPrimaryKeySelective(Goods goods) {
		// TODO Auto-generated method stub
		return goodsMapper.updateByPrimaryKeySelective(goods);
	}
	@Override
	public Goods selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(id);
	}
	@Override
	public Goods selectByTname(String tname) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByTname(tname);
	}
	@Override
	public Goods selectBySname(String Sname) {
		// TODO Auto-generated method stub
		return goodsMapper.selectBySname(Sname);
	}
	@Override
	public List<Goods> getHightList() {
		// TODO Auto-generated method stub
		return goodsMapper.getHightList();
	}
	@Override
	public List<Goods> getShortList() {
		// TODO Auto-generated method stub
		return goodsMapper.getShortList();
	}
	@Override
	public  List<Map<String,Object>> selectTotal(String hehe) {
		// TODO Auto-generated method stub
		return goodsMapper.selectTotal(hehe);
	}
	@Override
	public List<Map<String, Object>> selectNumber(String hehe) {
		// TODO Auto-generated method stub
		return goodsMapper.selectNumber(hehe);
	}
	@Override
	public PageInfo<Goods> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Goods> goods=goodsMapper.getGoodsList();
		PageInfo<Goods> pageInfo=new PageInfo<Goods>(goods);
		return pageInfo;
	}
	@Override
	public List<Map<String, Object>> selectSales(String hehe, String xixi) {
		// TODO Auto-generated method stub
		return goodsMapper.selectSales(hehe, xixi);
	}
	@Override
	public List<Map<String, Object>> selectPurchase(String hehe, String xixi) {
		// TODO Auto-generated method stub
		return goodsMapper.selectPurchase(hehe, xixi);
	}

}
