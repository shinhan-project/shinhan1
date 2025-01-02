package kr.co.hanokproject.review;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;
    
    @GetMapping("/review.do")
	public void review() {
    	System.out.println("review/reivew");
	}
    
    @PostMapping("/add")
    public ResponseEntity<?> addReview(@RequestBody ReviewVO review) {
        reviewService.addReview(review);
        return ResponseEntity.ok().body(Map.of("message", "리뷰가 등록되었습니다."));
    }
    
    // 특정 객실 리뷰 조회
    @GetMapping("/room/{room_id}")
    public List<ReviewVO> getRoomReviews(@PathVariable int room_id) {
        return reviewService.getRoomReviews(room_id);
    }
    
    // 특정 고객 리뷰 조회
    @GetMapping("/customer/{customer_id}")
    public List<ReviewVO> getCustomerReviews(@PathVariable int customer_id) {
        return reviewService.getCustomerReviews(customer_id);
    }
}