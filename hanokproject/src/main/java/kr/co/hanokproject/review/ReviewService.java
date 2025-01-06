package kr.co.hanokproject.review;

import java.util.List;

import kr.co.hanokproject.reservation.ReservationVO;

public interface ReviewService {
    void addReview(ReviewVO review);
    List<ReviewVO> getRoomReviews(int room_id);
    List<ReviewVO> getCustomerReviews(int customer_id);
    // 예약 정보 조회
    ReservationVO getReservationById(int reservation_id);
}
