package kr.co.hanokproject.owner;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanokproject.customer.CustomerVO;
import kr.co.hanokproject.owner.OwnerService;
import kr.co.hanokproject.owner.OwnerVO;

@Controller
public class OwnerController {
	@Autowired
	private OwnerService service;	
	
	//ownerlogin

		@GetMapping("/owner/owner_login.do")
		public void login() {
			 return;
		}
		@PostMapping("/owner/owner_login.do")
		public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
			OwnerVO vo = service.login(map);
			if(vo == null) {
				model.addAttribute("msg", "사장님 아이디 비밀번호가 올바르지 않습니다.");
				model.addAttribute("url" , "owner_login.do");
				return "common/alert";	
			}else {
				sess.setAttribute("ownerloginInfo", vo);
				return "redirect:index.do";
			}
			
		}
		
		
		//owner 회원가입
		
		@GetMapping("/owner/owner_regist.do")
		   public void regist() {
		      return;
		   }
		   
		   @PostMapping("/owner/insert.do")
		   public String insert(OwnerVO vo, Model model) {
		      if (service.regist(vo)) {
		         
		         model.addAttribute("msg", "정상적으로 가입되었습니다.");
		         //사장님 회원가입 완료 되면 이동할 위치 수정하기!
		         model.addAttribute("url", "/index.do");
		         
		      } else {
		         model.addAttribute("msg", "가입 오류");
		         model.addAttribute("url", "/owner/owner_regist.do");
		      }
		      return "common/alert";
		   }
	
}