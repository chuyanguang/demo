package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pojo.User;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService us;
	
	/*展示列表*/
	@RequestMapping("/list")
	public String getUser(Model model){
		model.addAttribute("list",us.find());
		return "index";
	}
	
	/*添加页面跳转*/
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addUser(){
		return "add";
	}
	
	/*添加处理*/
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addUser(User user,Model model){
		int result=us.add(user);
		if(result==0){
			model.addAttribute("msg", "添加失败");
			return "add";
		}
		return "redirect:/user/list";
	}
}
