
package kr.co.hanokproject.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {

	// 특정 사업장의 예약 목록을 조회
    List<ReservationVO> getReservationsByOwnerId(int owner_id);


    int getReservationCount(int owner_id);
    int getReservationEarning(int owner_id);
    int getReservationReviewCount(int owner_id);
    
    ReservationVO getReservationById(int reservation_id);
    
    List<ReservationVO> getCustomerReservations(int customer_id);
}
