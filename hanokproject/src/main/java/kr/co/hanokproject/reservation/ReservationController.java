package kr.co.hanokproject.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.hanokproject.customer.CustomerVO;
import kr.co.hanokproject.owner.OwnerVO;
import kr.co.hanokproject.room.RoomVO;

@Controller
public class ReservationController {
	

	 @Autowired
	    private ReservationService service;

	    @RequestMapping("/owner/owner_dash.do")
	    public String viewReservations(@SessionAttribute("ownerloginInfo") OwnerVO vo, Model model) {
	    	System.out.println("owner_id:"+vo.getOwner_id());
	        List<ReservationVO> reservations = service.getOwnerReservations(vo.getOwner_id());
	        model.addAttribute("reservations", reservations);
	        return "/owner/owner_dash";  // 해당하는 JSP 파일을 반환
	    }
	    
	 
	   
	    
}
