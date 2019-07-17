package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.Supply;

public interface SupplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Supply record);

    int insertSelective(Supply record);

    Supply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Supply record);

    int updateByPrimaryKey(Supply record);
    
    List<Supply> getSupplyList() ;
    
    PageInfo<Supply>  getList() ;
}