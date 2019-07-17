package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.Supply;

public interface SupplyService {
	List<Supply> getSupplyList() ;
	int insert(Supply supply);
	 int deleteByPrimaryKey(Integer id);
	 
	 Supply selectByPrimaryKey(Integer id);

	 int updateByPrimaryKeySelective(Supply supply);
	 PageInfo<Supply> getList(Integer currentPageNo,Integer pageSize) ;
	 
}
