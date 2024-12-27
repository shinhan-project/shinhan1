package kr.co.hanokproject.admin;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanokproject.admin.AdminService;
import kr.co.hanokproject.admin.AdminVO;
import kr.co.hanokproject.owner.OwnerService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	//login
	@GetMapping("/admin/admin_login.do")
	public void login() {
		 return;
	}
	@PostMapping("/admin/admin_login.do")
	public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
		AdminVO vo = service.login(map);
		if(vo == null) {
			model.addAttribute("msg", "관리자 로그인에 실패했습니다.");
			model.addAttribute("url" , "admin_login.do");
			return "common/alert";	
		}else {
			sess.setAttribute("loginInfo", vo);
			return "redirect:index.do";
		}
		
	}
	
	
	
	
	
}