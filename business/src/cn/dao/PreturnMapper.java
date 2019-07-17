package cn.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.entity.Preturn;
import cn.entity.Purchase;

public interface PreturnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Preturn record);

    int insertSelective(Preturn record);

    Preturn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Preturn record);

    int updateByPrimaryKey(Preturn record);
    List<Preturn> getPreturnList();
    PageInfo<Preturn>  getList() ;
}