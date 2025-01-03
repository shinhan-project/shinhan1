package kr.co.hanokproject.reservation;

import java.util.List;

public interface ReservationService {

	List<ReservationVO> getOwnerReservations(int owner_id);
	
}
