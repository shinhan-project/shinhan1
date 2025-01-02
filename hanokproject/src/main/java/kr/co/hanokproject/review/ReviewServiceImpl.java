package kr.co.hanokproject.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    private ReviewMapper reviewMapper;
    
    @Override
    public void addReview(ReviewVO review) {
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
}