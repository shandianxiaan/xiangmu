package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Customer;
import cn.entity.Goods;
import cn.entity.Supply;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    List<Customer> getCustomerList() ;
    Customer selectByName(String customerName);
    PageInfo<Customer>  getList() ;
}