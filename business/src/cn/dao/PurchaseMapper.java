package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Purchase;
import cn.entity.Sales;

public interface PurchaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Purchase record);

    int insertSelective(Purchase record);

    Purchase selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Purchase record);

    int updateByPrimaryKey(Purchase record);
    
    List<Purchase> getPurchaseList();
    Purchase getGid(Integer id);
    PageInfo<Purchase>  getList() ;
    
}