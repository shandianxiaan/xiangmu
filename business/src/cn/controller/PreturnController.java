package cn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;


import cn.entity.Preturn;
import cn.entity.Supply;
import cn.service.PreturnService;
import cn.tools.Const;





@Controller
@RequestMapping("/preturn")
public class PreturnController {

	@Autowired
	PreturnService preturnService;
	
	@RequestMapping("preturnList")
    public  String preturn(Integer currentPageNo,Model model){
		int pageSize = Const.pageSize;
		if(currentPageNo==null || currentPageNo<1){
			 currentPageNo = 1;
		}
        
		PageInfo<Preturn> pageInfo = null;
		pageInfo=preturnService.getList(currentPageNo,pageSize);
		model.addAttribute("pageInfo",pageInfo);
		return "/caitui";
		
	}
	

	@RequestMapping("delete")
	@ResponseBody()
	public Integer delete(Integer id){
		int n= preturnService.deleteByPrimaryKey(id);
		return n;
	}
	
	
	
	
	
}
