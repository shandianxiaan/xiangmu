package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import cn.dao.PreturnMapper;
import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.service.PreturnService;



@Service("preturnService")

public class PreturnServiceImpl implements PreturnService{

	@Autowired
	PreturnMapper preturnMapper;
	
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return preturnMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Preturn> getPreturnList() {
		// TODO Auto-generated method stub
		return preturnMapper.getPreturnList();
	}

	@Override
	public Preturn selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return preturnMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insert(Preturn preturn) {
		// TODO Auto-generated method stub
		return preturnMapper.insert(preturn);
	}

	@Override
	public PageInfo<Preturn> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Preturn> preturn=preturnMapper.getPreturnList();
		PageInfo<Preturn> pageInfo=new PageInfo<Preturn>(preturn);
		return pageInfo;
	}
	
	
	

}
