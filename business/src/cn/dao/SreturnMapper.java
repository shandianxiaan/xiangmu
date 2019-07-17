package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Preturn;
import cn.entity.Sreturn;

public interface SreturnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sreturn record);

    int insertSelective(Sreturn record);

    Sreturn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sreturn record);

    int updateByPrimaryKey(Sreturn record);
    List<Sreturn> getSreturnList();
    PageInfo<Sreturn>  getList() ;
}