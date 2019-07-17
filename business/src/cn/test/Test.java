package cn.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import cn.entity.GoodsType;
import cn.entity.Manager;
import cn.entity.Supply;
import cn.service.GoodsTypeService;
import cn.service.ManagerService;
import cn.service.SupplyService;
import cn.service.impl.GoodsTypeServiceImpl;
import cn.service.impl.SupplyServiceImpl;

@Controller
public class Test {
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		
		SupplyService supplyService=new SupplyServiceImpl();
		 List<Supply> supply = new ArrayList<Supply>();
		 supply=supplyService.getSupplyList();
		 System.out.println(supply.size());
	    //g.setTypename("图书");
	    
		//Manager m1=managerService.login("",)

	}

}
