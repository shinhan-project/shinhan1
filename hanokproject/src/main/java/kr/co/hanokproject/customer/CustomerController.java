package kr.co.hanokproject.customer;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService service;	
	
	@ResponseBody
	@GetMapping("/customer/emailCheck.do")
	public int emailCheck(String customer_email) {
		return service.emailCheck(customer_email);
	}
	
	@GetMapping("/customer/regist.do")
	public void regist() {
		return;
	}
	
	@PostMapping("/customer/insert.do")
	public String insert(CustomerVO vo, Model model) {
		if (service.regist(vo)) {
			
			model.addAttribute("msg", "정상적으로 가입되었습니다.");
			model.addAttribute("url", "/home.do");
		} else {
			model.addAttribute("msg", "가입 오류");
			model.addAttribute("url", "/regist.do");
		}
		return "common/alert";
	}
}