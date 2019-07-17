package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.Sales;

public interface SalesService {
	 List<Sales> getSalesList() ;
	 int deleteByPrimaryKey(Integer id);

	    int insert(Sales sales);
	    Sales getSid(Integer id);
	    int updateByPrimaryKeySelective(Sales sales);
	    PageInfo<Sales> getList(Integer currentPageNo,Integer pageSize) ;
}
