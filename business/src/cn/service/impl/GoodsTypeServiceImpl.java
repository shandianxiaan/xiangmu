package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.GoodsTypeMapper;
import cn.dao.ManagerMapper;
import cn.entity.GoodsType;
import cn.service.GoodsTypeService;
@Service("goodsTypeService")
public class GoodsTypeServiceImpl implements GoodsTypeService{
	@Autowired
	GoodsTypeMapper goodsTypeMapper;
	@Override
	public PageInfo<GoodsType> getList(Integer currentPageNo,Integer pageSize)  {
		PageHelper.startPage(currentPageNo,pageSize);
		List<GoodsType> goodsType=goodsTypeMapper.getGoodsTypeList();
		PageInfo<GoodsType> pageInfo=new PageInfo<GoodsType>(goodsType);
		return pageInfo;
	}
	@Override
	public int insert(GoodsType goodsType) {
		String name=goodsType.getTypeName();
		return goodsTypeMapper.insert(goodsType);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return goodsTypeMapper.deleteByPrimaryKey(id);
	}
	@Override
	public GoodsType selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsTypeMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(GoodsType goodsType) {
		// TODO Auto-generated method stub
		return goodsTypeMapper.updateByPrimaryKeySelective(goodsType);
	}
	@Override
	public List<GoodsType> getGoodsTypeList() {
		// TODO Auto-generated method stub
		return goodsTypeMapper.getGoodsTypeList();
	}

	
}
