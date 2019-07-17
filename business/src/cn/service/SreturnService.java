package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Preturn;
import cn.entity.Sreturn;

public interface SreturnService {
		
	
		List<Sreturn> getSreturnList();
	 int deleteByPrimaryKey(Integer id);
	  Sreturn selectByPrimaryKey(Integer id);
	  int insert(Sreturn sreturn);
	  PageInfo<Sreturn> getList(Integer currentPageNo,Integer pageSize) ;
	
}
