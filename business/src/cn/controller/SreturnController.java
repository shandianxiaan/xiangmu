package cn.controller;

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
import cn.entity.Preturn;
import cn.entity.Purchase;
import cn.entity.Sreturn;

import cn.service.SreturnService;
import cn.tools.Const;





@Controller
@RequestMapping("/sreturn")
public class SreturnController {

	@Autowired
	SreturnService sreturnService;
	
	@RequestMapping("sreturnList")
    public  String sreturn(Integer currentPageNo,Model model){
		int pageSize = Const.pageSize;
		if(currentPageNo==null || currentPageNo<1){
			 currentPageNo = 1;
		}
        
		PageInfo<Sreturn> pageInfo = null;
		pageInfo=sreturnService.getList(currentPageNo,pageSize);
		model.addAttribute("pageInfo",pageInfo);
		return "/xiaotui";
		
	}
	



	
	
	@RequestMapping("delete")
	@ResponseBody()
	public Integer delete(Integer id){
		int n= sreturnService.deleteByPrimaryKey(id);
		return n;
	}
	
	
	
	
	
}
