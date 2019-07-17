package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import cn.dao.SalesMapper;
import cn.entity.Goods;
import cn.entity.Sales;
import cn.service.SalesService;


@Service("salesService")
public class SalesServiceImpl implements  SalesService{

	@Autowired
	SalesMapper salesMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return salesMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Sales> getSalesList() {
		// TODO Auto-generated method stub
		return salesMapper.getSalesList();
	}

	@Override
	public int insert(Sales sales) {
		// TODO Auto-generated method stub
		return salesMapper.insert(sales);
	}

	@Override
	public Sales getSid(Integer id) {
		// TODO Auto-generated method stub
		return salesMapper.getSid(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Sales sales) {
		// TODO Auto-generated method stub
		return salesMapper.updateByPrimaryKeySelective(sales);
	}

	@Override
	public PageInfo<Sales> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Sales> sales=salesMapper.getSalesList();
		PageInfo<Sales> pageInfo=new PageInfo<Sales>(sales);
		return pageInfo;
	}

}
