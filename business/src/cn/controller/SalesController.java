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

import cn.entity.Customer;
import cn.entity.Goods;
import cn.entity.Manager;
import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.entity.Sales;
import cn.entity.Sreturn;
import cn.service.CustomerService;
import cn.service.GoodsService;
import cn.service.PurchaseService;
import cn.service.SalesService;
import cn.service.SreturnService;
import cn.tools.Const;





@Controller
@RequestMapping("/sales")

public class SalesController {
	
	@Autowired
	GoodsService goodsService;
	
	
	@Autowired
	 SalesService  salesService;


	@Autowired
	CustomerService customerService;
	
	
	@Autowired
	SreturnService sreturnService;
	
	
	@RequestMapping("salesList")
	

    public  String sales(Integer currentPageNo,Model model){
    	int pageSize = Const.pageSize;
    	if(currentPageNo==null || currentPageNo<1){
    		 currentPageNo = 1;
    		}
	 List<Goods> goods = new ArrayList<Goods>();
	 List<Customer> customer = new ArrayList<Customer>();
	 PageInfo<Sales> pageInfo = null;
	 pageInfo=salesService.getList(currentPageNo,pageSize);
	 goods=goodsService.getGoodsList();
	 customer=customerService.getCustomerList();
	 model.addAttribute("goodsList",goods);
	 model.addAttribute("customerList",customer);
	 model.addAttribute("pageInfo",pageInfo);
	 return "/sales";
	}
	
	
	

	@RequestMapping("add")
	  public  String add(Sales sales,HttpServletRequest request){
		System.out.println("-------------"+sales.getGid());
		Goods goods=goodsService.selectByPrimaryKey(sales.getGid());
		System.out.println("-------------"+goods.getBatch());
		int number=goods.getNumber();
		int price=sales.getSprice();
		int pnumber=sales.getCnumber();
		int total=price*pnumber;
		sales.setDiscout(total);
		sales.setRtime(Const.getCurrentTime());
		sales.setStatus("已完成");
		Manager manager=(Manager)request.getSession().getAttribute("managerSerssion");
		sales.setMuser(manager.getUsername());
		goods.setNumber(number-pnumber);
		int t=goodsService.updateByPrimaryKeySelective(goods);
		int n=salesService.insert(sales);
		return "redirect:/sales/salesList";
		
	}
	
	
	
	
	
	
@RequestMapping("tuihuo")
	
    public  String tuihuo(Sreturn sreturn,HttpServletRequest request){
	
		Sales sales=salesService.getSid(sreturn.getSid());
		Goods goods=goodsService.selectByPrimaryKey(sales.getGid());
		int num=sales.getCnumber();
		int ss=goods.getNumber();
		goods.setNumber(ss+num);
		int n=goodsService.updateByPrimaryKeySelective(goods);
		Manager manager=(Manager)request.getSession().getAttribute("managerSerssion");
		//int t=purchaseService.deleteByPrimaryKey(preturn.getPid());
		sreturn.setUtime(Const.getCurrentTime());
		sreturn.setSuser(manager.getUsername());
		sales.setStatus("已退货");
		int t=salesService.updateByPrimaryKeySelective(sales);
		int s=sreturnService.insert(sreturn);
	 return "redirect:/sales/salesList";
	}
	
	
	

	@RequestMapping("toupdate")
	@ResponseBody()
    public Map<String,Object>  toupdate(Integer id){
		//System.out.println("--------hao------"+id);
		Sales sales= salesService.getSid(id);
		System.out.println("--------hao------"+sales.getBatch());
		Goods goods=goodsService.selectByPrimaryKey(sales.getGid());
		Customer customer=customerService.selectByPrimaryKey(sales.getCid());
		Map<String,Object> list=new HashMap<String, Object>();
		list.put("goods", goods);
		list.put("sales", sales);
		list.put("customer", customer);
		return list;
	}
	
	
	
	
	
	
	
	@RequestMapping("select")
	@ResponseBody()
	 public  Map<String,Integer> select(Integer gid){
		System.out.println("-------"+gid);
		Map<String,Integer> list=new HashMap();
		Goods goods= goodsService.selectByPrimaryKey(gid);
		Integer nums=goods.getNumber();
		list.put("jsondata", nums);
		return list;
		
		
	}
	
	@RequestMapping("delete")
	@ResponseBody()
  public Integer delete(Integer id){
		int n= salesService.deleteByPrimaryKey(id);
		return n;
	}
	
}
