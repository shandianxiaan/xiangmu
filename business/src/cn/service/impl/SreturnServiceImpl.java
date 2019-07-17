package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.dao.SreturnMapper;
import cn.entity.Preturn;
import cn.entity.Sreturn;
import cn.service.SreturnService;





@Controller
@RequestMapping("/sreturn")

public class SreturnServiceImpl  implements SreturnService{
	
	@Autowired
	SreturnMapper  sreturnMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sreturnMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Sreturn> getSreturnList() {
		// TODO Auto-generated method stub
		return sreturnMapper.getSreturnList();
	}

	@Override
	public int insert(Sreturn sreturn) {
		// TODO Auto-generated method stub
		return sreturnMapper.insert(sreturn);
	}

	@Override
	public Sreturn selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sreturnMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageInfo<Sreturn> getList(Integer currentPageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(currentPageNo,pageSize);
		List<Sreturn> sreturn=sreturnMapper.getSreturnList();
		PageInfo<Sreturn> pageInfo=new PageInfo<Sreturn>(sreturn);
		return pageInfo;
	}
	
	

}
