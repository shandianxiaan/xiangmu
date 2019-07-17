package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.GoodsMapper;
import cn.dao.SupplyMapper;
import cn.entity.Goods;
import cn.entity.Supply;
import cn.service.SupplyService;


@Service("supplyService")
public class SupplyServiceImpl implements SupplyService{
	
	@Autowired
	SupplyMapper supplyMapper;
	@Override
	public List<Supply> getSupplyList() {
		return supplyMapper.getSupplyList();
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return supplyMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Supply supply) {
		// TODO Auto-generated method stub
		return supplyMapper.insert(supply);
	}
	@Override
	public Supply selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return supplyMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(Supply supply) {
		// TODO Auto-generated method stub
		return supplyMapper.updateByPrimaryKeySelective(supply);
	}
	@Override
	public PageInfo<Supply> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Supply> supply=supplyMapper.getSupplyList();
		PageInfo<Supply> pageInfo=new PageInfo<Supply>(supply);
		return pageInfo;
	}

}
