package kr.co.hanokproject.admin;

import java.util.List;
import java.util.Map;

import kr.co.hanokproject.hanok.HanokVO;
import kr.co.hanokproject.reservation.ReservationVO;

public interface AdminService {

	Map<String, Object> list(AdminVO vo);

	AdminVO adminlogin(Map map);
	
	// 승인된 요청의 개수
    int getReservationCount(int hanok_id);

    // 거절된 요청의 개수
    int getReservationEarning(int hanok_id);
    
    // 승인을 요청한 개수
    int getReservationReviewCount(int hanok_id);
    
    List<ReservationVO> getOwnerReservations(int owner_id);
    
  

	List<HanokVO> getRequest(int owner_id);


}