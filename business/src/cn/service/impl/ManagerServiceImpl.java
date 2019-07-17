package cn.service.impl;

import java.util.List;

import cn.dao.ManagerMapper;
import cn.entity.Manager;
import cn.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("managerService")
public class ManagerServiceImpl  implements ManagerService{
	@Autowired
	ManagerMapper managerMapper;
	public Manager login(String username, String password, String role) {
		// TODO Auto-generated method stub
		Manager manager=null; 
		Manager m1 = managerMapper.getLoginManager(username,password,role);
		if(m1 !=null){
			manager=m1;
		}
		
		return manager;
	}
	@Override
	public int updateByPrimaryKeySelective(Manager manager) {
		// TODO Auto-generated method stub
		return managerMapper.updateByPrimaryKeySelective(manager);
	}
	@Override
	public int insert(Manager manager) {
		// TODO Auto-generated method stub
		return managerMapper.insert(manager);
	}
	@Override
	public List<Manager> getManagerList() {
		// TODO Auto-generated method stub
		return managerMapper.getManagerList();
	}
	@Override
	public Manager selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerMapper.selectByPrimaryKey(id);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerMapper.deleteByPrimaryKey(id);
	}

}
