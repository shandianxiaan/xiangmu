package cn.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cn.entity.Customer;
import cn.entity.GoodsType;
import cn.entity.Supply;
import cn.service.CustomerService;
import cn.tools.Const;




@Controller
@RequestMapping("/customer")


public class CustomerController {
	
	
	@Autowired
	CustomerService customerService;
	
	
				//显示所有顾客
			@RequestMapping("customerList")
				
			 public  String customer(Integer currentPageNo,Model model){
				
				int pageSize = Const.pageSize;
				if(currentPageNo==null || currentPageNo<1){
					 currentPageNo = 1;
				}
				PageInfo<Customer> pageInfo = null;
				pageInfo=customerService.getList(currentPageNo,pageSize);
				model.addAttribute("pageInfo",pageInfo);
					return "/customer";
				
			}
			//添加顾客，用对象接收，调用增加方法
			@RequestMapping("add")
			public  String add(Customer customer){
				int n=customerService.insert(customer);
				return "redirect:/customer/customerList";
				
			}
			//删除，页面传来id，通过id删除
			@RequestMapping("delete")
			@ResponseBody()
			public Integer delete(Integer id){
				int n= customerService.deleteByPrimaryKey(id);
				return n;
			}
			//显示要修改顾客的基本信息，用ajax发请求，返回页面。
			@RequestMapping("toupdate")
			@ResponseBody()
			public Customer  toupdate(Integer id){
				Customer huowu= customerService.selectByPrimaryKey(id);
				//System.out.println("--------------"+huowu.getTypeName());
				return huowu;
			}
			
			//修改顾客，用对象接收，调用修改方法
			@RequestMapping("update")
			public  String update(Customer customer){
				int t=customerService.updateByPrimaryKeySelective(customer);
				return "redirect:/customer/customerList";
			}


}
