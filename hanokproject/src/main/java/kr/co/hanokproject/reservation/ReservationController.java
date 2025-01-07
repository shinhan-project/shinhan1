package kr.co.hanokproject.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.hanokproject.customer.CustomerVO;
import kr.co.hanokproject.owner.OwnerVO;
import kr.co.hanokproject.review.ReviewVO;

@Controller
public class ReservationController {
	

	 @Autowired
	    private ReservationService service;

	    @RequestMapping("/owner/owner_dash.do")
	    public String viewReservations(@SessionAttribute("ownerloginInfo") OwnerVO vo, Model model) {
	    	System.out.println("owner_id:"+vo.getOwner_id());
	        List<ReservationVO> reservations = service.getOwnerReservations(vo.getOwner_id());
	    
	        int reservationsCount = service.getReservationCount(vo.getOwner_id());
	        int reservationsEarning = service.getReservationEarning(vo.getOwner_id());
	        int reservationsReviewCount = service.getReservationReviewCount(vo.getOwner_id());
	        
	        model.addAttribute("reservations", reservations);
	 
	        model.addAttribute("reservationsCount", reservationsCount);
	        model.addAttribute("reservationsEarning", reservationsEarning);
	        model.addAttribute("reservationsReviewCount", reservationsReviewCount);
	        return "/owner/owner_dash";  // 해당하는 JSP 파일을 반환
	        
	        
	        
	    }
	    
	    @GetMapping("/customer/mybookings.do")
	    public String getCustomerReservations(@SessionAttribute("loginInfo") CustomerVO vo, Model model) {
	    	
	    	System.out.println("customer_id:"+vo.getCustomer_id());
	        List<ReservationVO> reservations = service.getCustomerReservations(vo.getCustomer_id());
	        model.addAttribute("reservations", reservations);
	        return "/customer/mybookings"; 
	        
	    }
	    
	    //고객 예약상세내역 예악번호 별로 보기
	    @GetMapping("/{reservations_id}/bookingdetail.do")
	    public String viewReservationDetail(@PathVariable("reservations_id") int reservations_id,@SessionAttribute("loginInfo") CustomerVO vo, Model model) {
	        ReservationVO reservations = service.getReservationById(reservations_id);
	        if(reservations != null && reservations.getCustomer_id() == vo.getCustomer_id()) {
	        model.addAttribute("reservations", reservations);
	        return "/customer/bookingdetail"; 
	       
	    } else { 
	    	return "redicrect:/customer/mybookings.do";
	    }
	    
	    }
	   
	    
}
