package cn.service;

import java.util.List;

import cn.entity.Manager;

public interface ManagerService {
	 public Manager login(String username, String password,String role);
	 
	 int updateByPrimaryKeySelective(Manager manager);
	 
	 List<Manager> getManagerList() ;
	 int insert(Manager manager);
	 Manager selectByPrimaryKey(Integer id);
	 int deleteByPrimaryKey(Integer id);
}
