package cn.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.GoodsType;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    List<Goods> getGoodsList() ;
    
    Goods selectByName(String goodsName);
    Goods selectByTname(String tname);
    Goods selectBySname(String Sname);
    List<Goods> getShortList();
    List<Goods> getHightList();
    List<Map<String,Object>> selectTotal(@Param("hehe") String hehe);
    List<Map<String,Object>> selectNumber(@Param("hehe") String hehe);
    PageInfo<Goods>  getList() ;
    List<Map<String,Object>> selectSales(@Param("hehe") String hehe,@Param("xixi") String xixi);
    List<Map<String,Object>> selectPurchase(@Param("hehe") String hehe,@Param("xixi") String xixi);
}