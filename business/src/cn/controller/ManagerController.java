package cn.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Customer;
import cn.entity.Goods;
import cn.entity.Manager;
import cn.service.ManagerService;
import cn.tools.Const;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
		@Autowired
		ManagerService managerService;
		
	//登录，从页面传过来账户密码，等级，在数据库查找。找到返回主页，将用户存入session，否则，重新登录。
	 @RequestMapping("login")
	    public  void login(HttpServletRequest request,String username,String password,String role, HttpServletResponse response, HttpSession session)throws ServletException, IOException{
		 response.setContentType("text/html;charset=UTF-8");
		 request.setCharacterEncoding("UTF-8");
		 Manager u=managerService.login(username,password,role);
		 PrintWriter out=response.getWriter();
		 if (u==null){
	        //return "redirect:../login.jsp";
	        out.print("<script>alert('用户名或者密码错误!');location.href='"+Const.ROOT+"/login.jsp';</script>");
	        
	        }else {
	            session.setAttribute("managerSerssion",u);
	            //return "redirect:../index.jsp";
	            response.sendRedirect(Const.ROOT+"/index1.jsp");
	        }
	    }
	 
	 //添加用户
	 @RequestMapping("add")
	  public  String add(Manager manager){
		 manager.setRole("1");
		int n=managerService.insert(manager);
		return "redirect:/manager/managerList";
		
	}
	 
	 
	 //修改密码，从页面传值接收，调用修改方法。
	 @RequestMapping("updatemima")
	 public  String update(String password,HttpServletRequest request,HttpSession session){
		 Manager manager=(Manager)request.getSession().getAttribute("managerSerssion");
		 manager.setPassword(password);
		 int n=managerService.updateByPrimaryKeySelective(manager);
		 session.setAttribute("managerSerssion",manager);
		 return "updatePwd";
	 }
	 
	 //查出所有用户，存入model，返回页面显示。
	 @RequestMapping("managerList")
	 public  String managerList(Model model){
		 List<Manager> manager = new ArrayList<Manager>();
		 manager=managerService.getManagerList();
			model.addAttribute("managerList",manager);
			return "user";
	 }
	 
	 //显示选择修改用户，用ajax传到这里，然后查找，返回到页面
	 @RequestMapping("toupdate")
		@ResponseBody()
	    public Manager  toupdate(Integer id){
		 Manager huowu= managerService.selectByPrimaryKey(id);
			return huowu;
		}
		
		//修改用户密码，调用修改方法。
		@RequestMapping("update")
		  public  String update(String password,Integer id){
			Manager manager=managerService.selectByPrimaryKey(id);
			manager.setPassword(password);
			int n=managerService.updateByPrimaryKeySelective(manager);
			return "redirect:/manager/managerList";
			
		}
	 
	 //删除，ajax页面传过来的id，调用删除方法。
		@RequestMapping("delete")
		@ResponseBody()
	    public Integer delete(Integer id){
			int n= managerService.deleteByPrimaryKey(id);
			return n;
		}
		
		//退出，返回登录页面
		@RequestMapping("logout")
		protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        HttpSession session=request.getSession();
	        session.invalidate();
	        response.sendRedirect(Const.ROOT+"/login.jsp");
	    }
}
