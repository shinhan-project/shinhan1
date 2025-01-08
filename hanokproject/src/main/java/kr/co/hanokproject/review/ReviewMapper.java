package kr.co.hanokproject.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanokproject.reservation.ReservationVO;



@Mapper
public interface ReviewMapper {
	
	
    // 리뷰 등록
    void insertReview(ReviewVO review);
    
    // 특정 객실에 대한 리뷰 조회
    List<ReviewVO> getReviewsByRoom(int room_id);
    
    // 고객이 작성한 리뷰 조회
    List<ReviewVO> getReviewsByCustomer(int customer_id);
    
 
    List<ReviewVO> getReviewsByOwner(int owner_id);
    
    // 리뷰 개수 조회
    int count();  // 파라미터 없이 호출
    
//    ReservationVO getReservationById(int reservation_id);

}