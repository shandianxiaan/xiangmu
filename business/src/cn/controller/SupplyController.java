package cn.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.GoodsType;
import cn.entity.Supply;
import cn.service.GoodsService;
import cn.service.SupplyService;
import cn.tools.Const;





@Controller
@RequestMapping("/supply")
public class SupplyController {

	@Autowired
	SupplyService supplyService;
	
	
	@Autowired
	GoodsService goodsService;
	
	
				@RequestMapping("supplyList")
					
				public  String supply(Integer currentPageNo,Model model){
					int pageSize = Const.pageSize;
					if(currentPageNo==null || currentPageNo<1){
						 currentPageNo = 1;
					}
			        
					PageInfo<Supply> pageInfo = null;
					pageInfo=supplyService.getList(currentPageNo,pageSize);
					model.addAttribute("pageInfo",pageInfo);
					return "/supply";
					
				}
				@RequestMapping("add")
				public  String add(Supply supply){
					int n=supplyService.insert(supply);
					return "redirect:/supply/supplyList";
					
				}
				
				@RequestMapping("delete")
				@ResponseBody()
				public Integer delete(Integer id){
					int n= supplyService.deleteByPrimaryKey(id);
					return n;
				}
					
				
				@RequestMapping("toupdate")
				@ResponseBody()
			    public Supply  toupdate(Integer id){
					Supply huowu= supplyService.selectByPrimaryKey(id);
					//System.out.println("--------------"+huowu.getTypeName());
					return huowu;
				}
				
				@RequestMapping("update")
				  public  String update(Supply supply ,String hname){
					
					Goods goods=goodsService.selectBySname(hname);
					if(goods==null){
						int t=supplyService.updateByPrimaryKeySelective(supply);
					}else{
						goods.setSname(supply.getCompanyName());
						int n=goodsService.updateByPrimaryKeySelective(goods);
						System.out.println("--------------"+goods.getSname());
						int t=supplyService.updateByPrimaryKeySelective(supply);
					}
					
					return "redirect:/supply/supplyList";
					
				}
				
				
	
}
