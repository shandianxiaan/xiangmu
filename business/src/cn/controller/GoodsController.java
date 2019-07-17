package cn.controller;

import java.util.ArrayList;
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

import cn.entity.Customer;
import cn.entity.Goods;
import cn.entity.GoodsType;
import cn.entity.Supply;
import cn.service.GoodsService;
import cn.service.GoodsTypeService;
import cn.service.SupplyService;
import cn.tools.Const;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	
	@Autowired
	GoodsTypeService goodsTypeService;
	
	@Autowired
	SupplyService supplyService;
	
	@RequestMapping("goodsList")
	

//显示商品，带分页，调用分页方法，存入model，传到页面显示。
    public  String goods(Integer currentPageNo,Model model){
    	int pageSize = Const.pageSize;
    	if(currentPageNo==null || currentPageNo<1){
    		 currentPageNo = 1;
    	}
    	PageInfo<Goods> pageInfo = null;
    	pageInfo=goodsService.getList(currentPageNo,pageSize);
		List<GoodsType> goodsType = new ArrayList<GoodsType>();
		List<Supply> supply = new ArrayList<Supply>();
		goodsType=goodsTypeService.getGoodsTypeList();
		supply=supplyService.getSupplyList();
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("goodsTypeList",goodsType);
		model.addAttribute("supplyList",supply);
		return "/inventory";
		
	}
	
	@RequestMapping("add")
	  public  String add(Goods goods){
		int n=goodsService.insert(goods);
		return "redirect:/goods/goodsList";
		
	}
	
	@RequestMapping("delete")
	@ResponseBody()
    public Integer delete(Integer id){
		int n= goodsService.deleteByPrimaryKey(id);
		return n;
	}
	
	@RequestMapping("toupdate")
	@ResponseBody()
    public Goods  toupdate(Integer id){
		Goods huowu= goodsService.selectByPrimaryKey(id);
		
		return huowu;
	}
	
	@RequestMapping("update")
	  public  String update(Goods goods){
		int n=goodsService.updateByPrimaryKeySelective(goods);
		return "redirect:/goods/goodsList";
		
	}
	
	@RequestMapping("List")
	//预警，从数据库查到低于和高于，预警数的，分别用list接收，返回到页面显示。
    public  String List(Model model){
		 List<Goods> goods = new ArrayList<Goods>();
		 List<Goods> short1 = new ArrayList<Goods>();
		 List<Goods> hight = new ArrayList<Goods>();
		 goods=goodsService.getGoodsList();
		 short1=goodsService.getShortList();
		 hight=goodsService.getHightList();
		model.addAttribute("goodsList",goods);
		model.addAttribute("shortList",short1);
		model.addAttribute("hightList",hight);
		return "/warning";
		
	}
	
	@RequestMapping("hehe")
	@ResponseBody()
	public Goods  hehe(Integer id){
		Goods gg= goodsService.selectByPrimaryKey(id);
		System.out.println("--------------"+gg.getGoodsName());
		return gg;
	}
	
	//修改商品价格数量或者预警数，从页面传来参数，用对象接收，调用修改方法。
	@RequestMapping("warn")
	  public  String warn(Goods goods){
		int n=goodsService.updateByPrimaryKeySelective(goods);
		return "redirect:/goods/List";
		
	}
	
	//通过时间，查销售额，数据库返回是一个map集合，用list集合接收。
	@RequestMapping("sum")
	@ResponseBody()
	public List<Map<String,Object>>  sum(String hehe){
		return goodsService.selectTotal(hehe);
	}
	
	@RequestMapping("total")
	@ResponseBody()
	public List<Map<String,Object>>  total(String hehe){
		return goodsService.selectNumber(hehe);
	}
	
	@RequestMapping("xiaoshou")
	@ResponseBody()
	public List<Map<String,Object>>  xiaoshou(String hehe,String xixi){
		return goodsService.selectSales(hehe, xixi);
	}
	
	@RequestMapping("caigou")
	@ResponseBody()
	public List<Map<String,Object>>  caigou(String hehe,String xixi){
		return goodsService.selectPurchase(hehe, xixi);
	}
	
	
}
