package cn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.GoodsType;
import cn.service.GoodsService;
import cn.service.GoodsTypeService;
import cn.tools.Const;

@Controller
@RequestMapping("/goodsType")
public class GoodsTypeController {
	@Autowired
	GoodsTypeService goodsTypeService;
	
	
	@Autowired
	GoodsService goodsService;
	
	
	@RequestMapping("goodsTypeList")
    public  String goodsTypeList(Integer currentPageNo,Model model){
		
		int pageSize = Const.pageSize;
		if(currentPageNo==null || currentPageNo<1){
			 currentPageNo = 1;
		}
        
		PageInfo<GoodsType> pageInfo = null;
		pageInfo=goodsTypeService.getList(currentPageNo,pageSize);
		
		model.addAttribute("pageInfo",pageInfo);
		return "/type";
		
	}
	
	@RequestMapping("add")
    public  String add(GoodsType goodsType,Model model){
		System.out.println(goodsType.getTypeName());
		int n=goodsTypeService.insert(goodsType);
		return "redirect:/goodsType/goodsTypeList";
		
	}
	
	@RequestMapping("delete")
	@ResponseBody()
    public Integer delete(Integer id){
		int n= goodsTypeService.deleteByPrimaryKey(id);
		return n;
	}
	
	
	@RequestMapping("toupdate")
	@ResponseBody()
    public GoodsType  toupdate(Integer id){
		GoodsType huowu= goodsTypeService.selectByPrimaryKey(id);
		//System.out.println("--------------"+huowu.getTypeName());
		return huowu;
	}
	
	@RequestMapping("update")
	  public  String update(GoodsType goodsType ,String tname){
		
		Goods goods=goodsService.selectByTname(tname);
		if(goods==null){
			int t=goodsTypeService.updateByPrimaryKeySelective(goodsType);
			
		}else{
			goods.setTname(goodsType.getTypeName());
			int n=goodsService.updateByPrimaryKeySelective(goods);
			System.out.println("--------------"+goods.getTname());
			int t=goodsTypeService.updateByPrimaryKeySelective(goodsType);
			System.out.println("--------------"+t);
		}
		return "redirect:/goodsType/goodsTypeList";
		
	}
	
	
	
}
