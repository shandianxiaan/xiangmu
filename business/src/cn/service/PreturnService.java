package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Preturn;
import cn.entity.Purchase;

public interface PreturnService {

	List<Preturn> getPreturnList();
	 int deleteByPrimaryKey(Integer id);
	  Preturn selectByPrimaryKey(Integer id);
	  int insert(Preturn preturn);
	  PageInfo<Preturn> getList(Integer currentPageNo,Integer pageSize) ;
}
