package kr.co.hanokproject.review;

import java.util.List;

public interface ReviewService {
    void addReview(ReviewVO review);
    List<ReviewVO> getRoomReviews(int room_id);
    List<ReviewVO> getCustomerReviews(int customer_id);
}
