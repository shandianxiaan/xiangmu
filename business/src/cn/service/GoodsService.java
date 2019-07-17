package cn.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.GoodsType;

public interface GoodsService {
	 List<Goods> getGoodsList();
	 int insert(Goods goods);
	 int deleteByPrimaryKey(Integer id);
	 Goods selectByName(String goodsName);
	 int updateByPrimaryKeySelective(Goods goods);
	 Goods selectByPrimaryKey(Integer id);
	 Goods selectByTname(String tname);
	  Goods selectBySname(String Sname);
	  List<Goods> getShortList();
	    List<Goods> getHightList();
	    List<Map<String,Object>> selectTotal(String hehe);
	    List<Map<String,Object>> selectNumber(String hehe);
	    List<Map<String,Object>> selectSales(String hehe,String xixi);
	    List<Map<String,Object>> selectPurchase(String hehe,String xixi);
	    PageInfo<Goods> getList(Integer currentPageNo,Integer pageSize) ;
}
