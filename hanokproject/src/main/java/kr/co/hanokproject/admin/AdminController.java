package kr.co.hanokproject.admin;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanokproject.hanok.HanokService;
import kr.co.hanokproject.hanok.HanokVO;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@Autowired
	private HanokService hanokService;
	
	
	//login
	@GetMapping("/admin/admin_login.do")
	public void adminlogin() {
		 return;
	}
	@PostMapping("/admin/admin_login.do")
	public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
		AdminVO vo = service.adminlogin(map);
		if(vo == null) {
			model.addAttribute("msg", "관리자 로그인에 실패했습니다.");
			model.addAttribute("url" , "admin_login.do");
			return "common/alert";	
		}else {
			sess.setAttribute("adminloginInfo", vo);
			return "redirect:index.do";
		}
		

	}
	
	//로그아웃
	   @GetMapping("/admin/logout.do")
		public String logout(HttpSession sess, Model model) {
			sess.invalidate();
			model.addAttribute("msg", "로그아웃되었습니다.");
			model.addAttribute("url", "/index.do");
			return "common/alert";
		}
	   
	   
	
	   // 한옥 상세보기
	    @GetMapping("/admin/hanokDetail.do")
	    public String hanokDetail(@RequestParam("hanok_id") int hanokId, Model model) {
	        HanokVO hanok = hanokService.getHanokById(hanokId);
	        model.addAttribute("hanok", hanok);
	        return "admin/hanokDetail"; // 한옥 상세 페이지 뷰
	    }

	    // 한옥 승인/거절 처리
	    @PostMapping("/admin/approve.do")
	    public String updateHanokStatus(
	            @RequestParam("hanok_id") int hanokId,
	            @RequestParam("status") int status,
	            Model model) {

	        boolean result = hanokService.updateHanokStatus(hanokId, status);
	        if (result) {
	            model.addAttribute("msg", status == 2 ? "승인되었습니다." : "거절되었습니다.");
	        } else {
	            model.addAttribute("msg", "처리 중 오류가 발생했습니다.");
	        }
	        model.addAttribute("url", "/admin/hanokList.do"); // 임시 리스트 페이지 경로
	        return "common/alert";
	    }
	
	
}