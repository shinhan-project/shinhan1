package kr.co.hanokproject.customer;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanokproject.customer.CustomerService;
import kr.co.hanokproject.customer.CustomerVO;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService service;	
	
	//login

	@GetMapping("/customer/login.do")
	public void login() {
		 return;
	}
	@PostMapping("/customer/login.do")
	public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
		CustomerVO vo = service.login(map);
		if(vo == null) {
			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
			model.addAttribute("url" , "login.do");
			return "common/alert";	
		}else {
			sess.setAttribute("loginInfo", vo);
			return "redirect:index.do";
		}
		
	}
	
	
}