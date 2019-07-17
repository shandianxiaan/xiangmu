package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.CustomerMapper;
import cn.entity.Customer;
import cn.entity.Goods;
import cn.service.CustomerService;


@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerMapper customerMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return customerMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Customer> getCustomerList() {
		// TODO Auto-generated method stub
		return customerMapper.getCustomerList();
	}

	@Override
	public int insert(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.insert(customer);
	}

	@Override
	public Customer selectByName(String customerName) {
		// TODO Auto-generated method stub
		return customerMapper.selectByName(customerName);
	}

	@Override
	public Customer selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return customerMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Customer record) {
		// TODO Auto-generated method stub
		return customerMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public PageInfo<Customer> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Customer> customer=customerMapper.getCustomerList();
		PageInfo<Customer> pageInfo=new PageInfo<Customer>(customer);
		return pageInfo;
	}

	
	
}
