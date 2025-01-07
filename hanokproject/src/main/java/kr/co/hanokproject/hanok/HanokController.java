package kr.co.hanokproject.hanok;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.hanokproject.owner.OwnerVO;
import kr.co.hanokproject.reservation.ReservationVO;

@Controller
public class HanokController {
	@Autowired
		private HanokService service;
	
	@RequestMapping("/owner/owner_listings.do")
    public String viewListings(@SessionAttribute("ownerloginInfo") OwnerVO vo, Model model) {
    	
        List<HanokVO> listings= service.getHanokListings(vo.getOwner_id());
    
        model.addAttribute("listings", listings);
 
        return "/owner/owner_listings";  // 해당하는 JSP 파일을 반환
    }
	
	
	

}
