package kr.co.hanokproject.customer;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	@GetMapping("/index.do")
	public String index() {
		return "index";

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
	
	// 한옥 검색 - 미완 (민규)
	@RequestMapping("/hanok/hanok_list.do")
    public String hanok_search(HttpServletRequest request, Model model) {
		try {
			int page = 1;
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
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}

    		return "/hanok/hanok_list";
    }
    
	// 한옥 상세(예약)페이지 - 미완 (민규)
    @GetMapping("/hanok/hanok_detail.do")
    public String hanokDetail() {

//        // 한옥 정보 가져오기
//        CustomerVO hanokDetail = service.getHanokDetail(hanokId);
//
//        // 방 리스트 가져오기
//        List<CustomerVO> roomList = service.getRoomList(hanokId);
//
//        // 리뷰 리스트 가져오기
//        List<CustomerVO> reviewList = service.getReviews(hanokId);
//
//        // 모델에 데이터 저장
//        model.addAttribute("hanokDetail", hanokDetail);
//        model.addAttribute("roomList", roomList);
//        model.addAttribute("reviewList", reviewList);

        return "/hanok/hanok_detail";
    }
    
    // 임시(민규)
    @GetMapping("/hanok/hanok_booking_confirm.do")
    public String hanokBookingConfirm() {
        return "/hanok/hanok_booking_confirm";
    }
    
    // 임시(민규)
    @GetMapping("/hanok/hanok_booking.do")
    public String hanokBooking() {
        return "/hanok/hanok_booking";
    }
}