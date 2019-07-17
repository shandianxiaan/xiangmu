package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.Sales;

public interface SalesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sales record);

    int insertSelective(Sales record);

    Sales selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sales record);

    int updateByPrimaryKey(Sales record);
    List<Sales> getSalesList();
    Sales getSid(Integer id);
    PageInfo<Sales>  getList() ;
}