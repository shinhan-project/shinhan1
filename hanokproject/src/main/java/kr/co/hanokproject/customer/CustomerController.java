package kr.co.hanokproject.customer;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@PropertySource("classpath:db.properties")
public class CustomerController {
	
	@Autowired
	private CustomerService service;	
	
	//login

	@GetMapping("/customer/login.do")
	public void login() {
		 return;
	}
	
	//로그인 과정
	@PostMapping("/customer/login.do")
	public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
		CustomerVO vo = service.login(map);
		if(vo == null) {
			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
			model.addAttribute("url" , "login.do");
			return "common/alert";	
		}else {
			sess.setAttribute("loginInfo", vo);
			return "redirect:/index.do";
		}
		
	}
	
	
	@GetMapping("/index.do")
	public String index() {
		return "index";

	}
	
	@GetMapping("/about.do")
	public String about() {
		return "about";

	}
	
	
	
	
	@GetMapping("/customer/regist.do")
	   public void regist() {
	      return;
	   }
	   
	   @PostMapping("/customer/insert.do")
	   public String insert(CustomerVO vo, Model model) {
	      if (service.regist(vo)) {
	         
	         model.addAttribute("msg", "정상적으로 가입되었습니다.");
	         model.addAttribute("url", "/index.do");
	         
	      } else {
	         model.addAttribute("msg", "가입 오류");
	         model.addAttribute("url", "/regist.do");
	      }
	      return "common/alert";
	   }
	
	   
	   //로그아웃
	   @GetMapping("/customer/logout.do")
		public String logout(HttpSession sess, Model model) {
			sess.invalidate();
			model.addAttribute("msg", "로그아웃되었습니다.");
			model.addAttribute("url", "/index.do");
			return "common/alert";
		}
	   
	   //회원정보 수정
	   @GetMapping("/customer/profile.do")
		public String edit(HttpSession sess, Model model) {
			CustomerVO uv = (CustomerVO)sess.getAttribute("loginInfo");
			model.addAttribute("vo", service.detail(uv));
			return "customer/profile";
		}
		
		@PostMapping("/customer/update.do")
		public String update(CustomerVO vo, Model model) {
			int r = service.update(vo);
			String msg = "";
			String url = "profile.do";
			if (r > 0) {
				msg = "정상적으로 수정되었습니다.";
			} else {
				msg = "수정 오류";
			}
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			return "common/alert";
		}
	 
	
	// 한옥 검색 (민규)
	@RequestMapping("/hanok/hanok_list.do")
    public String hanok_search(HttpServletRequest request, Model model) {
		try {
			int page = 1;
	        if (request.getParameter("page") != null) {
	            page = Integer.parseInt(request.getParameter("page"));
	        }
			String location = request.getParameter("location");
			String checkInDate = request.getParameter("checkInDate");
			String checkOutDate = request.getParameter("checkOutDate");
			String capacity = request.getParameter("capacity");
			
			CustomerVO customerVO = new CustomerVO();
			customerVO.setPage(page);
			customerVO.setLocation(location);
			customerVO.setCheckInDate(checkInDate);
			customerVO.setCheckOutDate(checkOutDate);
			customerVO.setCapacity(capacity);
				
			Map<String, Object> hanokData = service.searchHanok(customerVO);
			
			model.addAttribute("map", hanokData);
			model.addAttribute("currentPage", page); // 현재 페이지 설정
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
    		return "/hanok/hanok_list";
    }  
    
	// 한옥 상세(예약)페이지 (민규)
    @GetMapping("/hanok/hanok_detail.do")
    public String hanokDetail(@RequestParam("hanok_id") int hanok_id, @RequestParam(value = "location", required = false) String location, @RequestParam(value = "checkInDate", required = false) String checkInDate, @RequestParam(value = "checkOutDate", required = false) String checkOutDate, @RequestParam(value = "capacity", required = false) String capacity, Model model) {
    	// 한옥 정보 및 객실 정보 가져오기
        Map<String, Object> hanokDetailMap = service.getHanokDetail(hanok_id);
        String hanok_imgName = service.getHanokImg(hanok_id);
        
        // 디버깅 로그
        System.out.println("hanok_id: " + hanok_id);
        System.out.println("location: " + location);
        System.out.println("checkInDate: " + checkInDate);
        System.out.println("checkOutDate: " + checkOutDate);
        System.out.println("capacity: " + capacity);
        
        // 모델에 데이터 추가
        model.addAttribute("map", hanokDetailMap);
        model.addAttribute("hanok_imgName", hanok_imgName);
        model.addAttribute("location", location);
        model.addAttribute("checkInDate", checkInDate);
        model.addAttribute("checkOutDate", checkOutDate);
        model.addAttribute("capacity", capacity);
        
        return "/hanok/hanok_detail";
    }
    
    // 한옥 예약 확인 - 미완(민규)
    @GetMapping("/hanok/hanok_booking_confirm.do")
    public String hanokBookingConfirm() {
        return "/hanok/hanok_booking_confirm";
    }
    
    // 한옥 예약 확정 - 미완(민규)
    @GetMapping("/hanok/hanok_booking.do")
    public String hanokBooking() {
        return "/hanok/hanok_booking";
    }
    
}