package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.GoodsType;

public interface GoodsTypeService {
	List<GoodsType> getGoodsTypeList() ;
	  int insert(GoodsType goodsType);
	  int deleteByPrimaryKey(Integer id);
	  GoodsType selectByPrimaryKey(Integer id);
	  int updateByPrimaryKeySelective(GoodsType goodsType);
	  PageInfo<GoodsType> getList(Integer currentPageNo,Integer pageSize) ;
}
