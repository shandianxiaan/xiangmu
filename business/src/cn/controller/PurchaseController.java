package cn.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cn.entity.Goods;
import cn.entity.Manager;
import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.entity.Sales;
import cn.entity.Supply;
import cn.service.GoodsService;
import cn.service.PreturnService;
import cn.service.PurchaseService;
import cn.tools.Const;



@Controller
@RequestMapping("/purchase")

public class PurchaseController {

	@Autowired
	GoodsService goodsService;
	
	
	@Autowired
	PurchaseService purchaseService;
	
	@Autowired
	PreturnService preturnService;
	
	@RequestMapping("purchaseList")
	
    public  String purchase(Integer currentPageNo,Model model){
		int pageSize = Const.pageSize;
    	if(currentPageNo==null || currentPageNo<1){
    		 currentPageNo = 1;
    		}
	 List<Goods> goods = new ArrayList<Goods>();
	 PageInfo<Purchase> pageInfo = null;
	 pageInfo=purchaseService.getList(currentPageNo,pageSize);
	 goods=goodsService.getGoodsList();
	 model.addAttribute("goodsList",goods);
	 model.addAttribute("pageInfo",pageInfo);
	 return "/purchase";
	}
	
	//添加，从页面传值，用对象接收，通过外键查到所属商品，类型
	@RequestMapping("add")
	  public  String add(Purchase purchase,HttpServletRequest request){
		System.out.println("-------------"+purchase.getGid());
		Goods goods=goodsService.selectByPrimaryKey(purchase.getGid());
		System.out.println("-------------"+goods.getBatch());
		//计算总价
		int number=goods.getNumber();
		int price=goods.getPrice();
		int pnumber=purchase.getPnumber();
		int total=price*pnumber;
		//存总价
		purchase.setTotal(total);
		//存时间
		purchase.setRtime(Const.getCurrentTime());
		//加订单状态
		purchase.setStatus("已完成");
		Manager manager=(Manager)request.getSession().getAttribute("managerSerssion");
		purchase.setMuser(manager.getUsername());
		goods.setNumber(number+pnumber);
		int t=goodsService.updateByPrimaryKeySelective(goods);
		int n=purchaseService.insert(purchase);
		return "redirect:/purchase/purchaseList";
		
	}
	
	
	@RequestMapping("tuihuo")
	
    public  String tuihuo(Preturn preturn,HttpServletRequest request){
	
		Purchase purchase=purchaseService.getGid(preturn.getPid());
		Goods goods=goodsService.selectByPrimaryKey(purchase.getGid());
		int num=purchase.getPnumber();
		int ss=goods.getNumber();
		goods.setNumber(ss-num);
		purchase.setStatus("已退货");
		int t=purchaseService.updateByPrimaryKeySelective(purchase);
		int n=goodsService.updateByPrimaryKeySelective(goods);
		//int t=purchaseService.deleteByPrimaryKey(preturn.getPid());
		preturn.setUtime(Const.getCurrentTime());
		int s=preturnService.insert(preturn);
	 return "redirect:/purchase/purchaseList";
	}
	
	
	

	@RequestMapping("toupdate")
	@ResponseBody()
    public Map<String,Object>  toupdate(Integer id){
		//System.out.println("--------hao------"+id);
		Purchase purchase= purchaseService.getGid(id);
		System.out.println("--------hao------"+purchase.getBatch());
		Goods goods=goodsService.selectByPrimaryKey(purchase.getGid());
		Map<String,Object> list=new HashMap<String, Object>();
		list.put("goods", goods);
		list.put("purchase", purchase);
		return list;
	}
	
	
	
	@RequestMapping("delete")
	@ResponseBody()
  public Integer delete(Integer id){
		int n= purchaseService.deleteByPrimaryKey(id);
		return n;
	}


}
