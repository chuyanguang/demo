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
	
	/*չʾ�б�*/
	@RequestMapping("/list")
	public String getUser(Model model){
		model.addAttribute("list",us.find());
		return "index";
	}
	
	/*����ҳ����ת*/
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addUser(){
		return "add";
	}
	
	/*���Ӵ���*/
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addUser(User user,Model model){
		int result=us.add(user);
		if(result==0){
			model.addAttribute("msg", "����ʧ��");
			return "add";
		}
		return "redirect:/user/list";
	}
}