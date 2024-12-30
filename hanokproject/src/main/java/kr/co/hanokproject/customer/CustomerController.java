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
	
	@GetMapping("/hanok_list.do")
	public String hanokList(@RequestParam(value = "page", defaultValue = "1") int page,
	                        @RequestParam(value = "location", required = false) String location,
	                        @RequestParam(value = "checkInDate", required = false) String checkInDate,
	                        @RequestParam(value = "checkOutDate", required = false) String checkOutDate,
	                        @RequestParam(value = "capacity", required = false) String capacity,
	                        Model model) {
	    CustomerVO customerVO = new CustomerVO();
	    customerVO.setPage(page);
	    customerVO.setLocation(location);
	    customerVO.setCheckInDate(checkInDate);
	    customerVO.setCheckOutDate(checkOutDate);
	    customerVO.setCapacity(capacity);

	    Map<String, Object> hanokData = service.searchHanok(customerVO);

	    model.addAttribute("map", hanokData);
	    return "hanok_list";
	}
    
    @GetMapping("/hanok_detail.do")
    public String hanokDetail(
            @RequestParam("hanokId") int hanokId,
            Model model) {

        // 한옥 정보 가져오기
        CustomerVO hanokDetail = service.getHanokDetail(hanokId);

        // 방 리스트 가져오기
        List<CustomerVO> roomList = service.getRoomList(hanokId);

        // 리뷰 리스트 가져오기
        List<CustomerVO> reviewList = service.getReviews(hanokId);

        // 모델에 데이터 저장
        model.addAttribute("hanokDetail", hanokDetail);
        model.addAttribute("roomList", roomList);
        model.addAttribute("reviewList", reviewList);

        return "hanok_detail";
    }
}