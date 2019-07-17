package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import cn.entity.Manager;

public interface ManagerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Manager record);

    int insertSelective(Manager record);

    Manager selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
    
    List<Manager> getManagerList() ;
    
    Manager getLoginManager(@Param("username") String username,@Param("password") String password,@Param("role") String role);
}