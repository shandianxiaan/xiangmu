package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.PurchaseMapper;
import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.entity.Sales;
import cn.service.PurchaseService;



@Service("purchaseService")
public class PurchaseServiceImpl implements  PurchaseService{

	
	@Autowired
	PurchaseMapper purchaseMapper;
	
	@Override
	public List<Purchase> getPurchaseList() {
		// TODO Auto-generated method stub
		return purchaseMapper.getPurchaseList();
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return purchaseMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Purchase purchase) {
		// TODO Auto-generated method stub
		return purchaseMapper.insert(purchase);
	}

	@Override
	public Purchase selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return purchaseMapper.selectByPrimaryKey(id);
	}

	@Override
	public Purchase getGid(Integer id) {
		// TODO Auto-generated method stub
		return purchaseMapper.getGid(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Purchase purchase) {
		// TODO Auto-generated method stub
		return purchaseMapper.updateByPrimaryKeySelective(purchase);
	}

	@Override
	public PageInfo<Purchase> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Purchase> purchase=purchaseMapper.getPurchaseList();
		PageInfo<Purchase> pageInfo=new PageInfo<Purchase>(purchase);
		return pageInfo;
	}

}
