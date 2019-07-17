package cn.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Customer;
import cn.entity.Goods;

public interface CustomerService {

	 List<Customer> getCustomerList();
	 int insert(Customer customer);
	 int deleteByPrimaryKey(Integer id);
	  Customer selectByName(String customerName);
	  Customer selectByPrimaryKey(Integer id);
	  int updateByPrimaryKeySelective(Customer record);
	  PageInfo<Customer> getList(Integer currentPageNo,Integer pageSize) ;

}
