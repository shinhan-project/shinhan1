package kr.co.hanokproject.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {

	// 특정 사업장의 예약 목록을 조회
    List<ReservationVO> getReservationsByOwnerId(int owner_id);
    
    // 고객 예약 목록 조회
	List<ReservationVO> getReservationsAndRooms(int customer_id);
}
