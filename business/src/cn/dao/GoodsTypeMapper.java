package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.GoodsType;

public interface GoodsTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    GoodsType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
    List<GoodsType> getGoodsTypeList() ;
    PageInfo<GoodsType> getList() ;
}