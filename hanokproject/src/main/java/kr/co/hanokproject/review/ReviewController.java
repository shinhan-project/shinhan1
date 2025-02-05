package kr.co.hanokproject.review;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.hanokproject.customer.CustomerVO;
import kr.co.hanokproject.owner.OwnerVO;
import kr.co.hanokproject.reservation.ReservationService;
import kr.co.hanokproject.reservation.ReservationVO;


@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;
    
    @Autowired
    private ReservationService reservationService;
    
    @GetMapping("/review.do")
    public String review(@RequestParam("reservation_id") int reservation_id, Model model) {
        // 예약 정보를 조회
        ReservationVO reservation = reservationService.getReservationById(reservation_id);
        
        // 모델에 추가
        model.addAttribute("reservation", reservation);
        
        System.out.println("Check-in: " + reservation.getCheckin());
        System.out.println("Check-out: " + reservation.getCheckout());

        
        return "review/review";
    }
    
    
    @PostMapping("/add")
    public String addReview(@ModelAttribute ReviewVO review, RedirectAttributes redirectAttributes) {
        reviewService.addReview(review);
        redirectAttributes.addFlashAttribute("message", "리뷰가 등록되었습니다.");
        return "redirect:/review/reviews";
    }
    
    // 특정 객실 리뷰 조회
    @GetMapping("/room/{room_id}")
    public List<ReviewVO> getRoomReviews(@PathVariable int room_id) {
        return reviewService.getRoomReviews(room_id);
    }
    
    // 특정 고객 리뷰 조회
    @GetMapping("/reviews")
    public String getCustomerReviews(@SessionAttribute("loginInfo") CustomerVO vo, Model model) {
    	
        List<ReviewVO> reviews = reviewService.getCustomerReviews(vo.getCustomer_id());
        model.addAttribute("reviews", reviews);
        return "review/reviews"; 
    }
    
    // 사장님 리뷰 조회
    @GetMapping("/owner")
    public String getOwnerReviews(@SessionAttribute("ownerloginInfo") OwnerVO vo, Model model) {
        List<ReviewVO> reviews = reviewService.getOwnerReviews(vo.getOwner_id());
        model.addAttribute("reviews", reviews);
        for (ReviewVO review : reviews) {
            System.out.println("Review Date: " + review.getReview_date());
        }

        return "review/owner_review"; 
    }
}