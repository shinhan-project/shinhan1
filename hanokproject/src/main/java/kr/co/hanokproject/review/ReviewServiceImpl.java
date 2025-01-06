package kr.co.hanokproject.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.reservation.ReservationVO;

@Service
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    private ReviewMapper reviewMapper;
    
    @Override
    public void addReview(ReviewVO review) {
        // 예약 정보를 조회
        ReservationVO reservationInfo = reviewMapper.getReservationById(review.getReservations_id());
        
        // 예약 정보에서 필요한 데이터 설정
        review.setCustomer_id(reservationInfo.getCustomer_id());
        review.setHanok_id(reservationInfo.getHanok_id());
        review.setRoom_id(reservationInfo.getRoom_id());
        
        // 리뷰 등록
        reviewMapper.insertReview(review);
    }
    
    
    @Override
    public List<ReviewVO> getRoomReviews(int room_id) {
        return reviewMapper.getReviewsByRoom(room_id);
    }
    
    @Override
    public List<ReviewVO> getCustomerReviews(int customer_id) {
        return reviewMapper.getReviewsByCustomer(customer_id);
    }
    
    @Override
    public ReservationVO getReservationById(int reservation_id) {
        return reviewMapper.getReservationById(reservation_id);
    }
    
    
}