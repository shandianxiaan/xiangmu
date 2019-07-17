package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.entity.Sales;

public interface PurchaseService {

	  List<Purchase> getPurchaseList() ;
	  
	  int deleteByPrimaryKey(Integer id);

	    int insert(Purchase purchase);
	
	    Purchase selectByPrimaryKey(Integer id);
	    
	    Purchase getGid(Integer id);
	    int updateByPrimaryKeySelective(Purchase purchase);
	    PageInfo<Purchase> getList(Integer currentPageNo,Integer pageSize) ;
}
