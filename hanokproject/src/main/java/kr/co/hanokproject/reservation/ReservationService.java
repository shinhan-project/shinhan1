package kr.co.hanokproject.reservation;

import java.util.List;

public interface ReservationService {

	List<ReservationVO> getOwnerReservations(int owner_id);
	
	
	// 특정 사업장의 예약 개수 조회
    int getReservationCount(int owner_id);

    //특정 사업장의 수입
    int getReservationEarning(int owner_id);
    
    //특정 사업장의 리뷰수
    int getReservationReviewCount(int owner_id);
    
    // 예약 정보 조회
    ReservationVO getReservationById(int reservation_id);
}
