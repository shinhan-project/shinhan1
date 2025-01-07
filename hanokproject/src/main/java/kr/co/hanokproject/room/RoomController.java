package kr.co.hanokproject.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanokproject.hanok.HanokService;
import kr.co.hanokproject.hanok.HanokVO;

@Controller
public class RoomController {

	@Autowired
	private RoomService service;
	@Autowired
	private HanokService hanokservice;
	
	
	// 한옥에 속한 방 목록을 조회해서 owner_rooms.jsp로 이동
    @RequestMapping("/owner/owner_rooms")
    public String getRoomList(@RequestParam("hanok_id") int hanok_id, Model model) {
        
        List<RoomVO> roomList =service.getRoomList(hanok_id);
        HanokVO vo =hanokservice.getHanokById(hanok_id);
        model.addAttribute("vo", vo);
        
        
        model.addAttribute("roomList", roomList);

        // 방 리스트를 보여줄 JSP 페이지로 포워딩
        return "owner/owner_rooms";
    }
	 

}
