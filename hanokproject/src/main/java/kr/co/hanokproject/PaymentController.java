package kr.co.hanokproject;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import kr.co.hanokproject.customer.CustomerService;
import kr.co.hanokproject.customer.CustomerVO;

@Controller
@PropertySource("classpath:db.properties")
public class PaymentController {
	
	@Autowired
	private CustomerService service;
	
	private final IamportClient iamportClient;
	
    @Value("${imp.api.key}")
    private String REST_API_KEY;
    
    @Value("${imp.api.secretkey}")
    private String REST_API_SECRET;
    
    public PaymentController() {
        this.iamportClient = new IamportClient("1601432480358030", "vnwrBCWCAB8twK2LzfGmJTC5iWkal4doZ0B86I4420nIjpRKwlJNzK1ZnfQ7TcT25OXpppyDtf6SOuGB");
    }

    @PostMapping("/hanok/verify/{imp_uid}")
    @ResponseBody // JSON 응답을 반환하기 위해 추가
    public Map<String, Object> verifyPayment(@PathVariable("imp_uid") String imp_uid) throws IamportResponseException, IOException {
        Map<String, Object> response = new HashMap<>();
        IamportResponse<Payment> paymentResponse = iamportClient.paymentByImpUid(imp_uid);

        if (paymentResponse != null && "paid".equals(paymentResponse.getResponse().getStatus())) {
	            // 결제 성공
	            // 예약 정보 저장 로직 추가
	            response.put("success", true);
	            response.put("message", "결제가 성공적으로 완료되었습니다.");
        } else {
            // 결제 실패
            response.put("success", false);
            response.put("message", "결제가 실패하였습니다.");
        }
        return response;
    }
    
    // "2025-01-03" 형식을 Timestamp 타입으로 변환하는 함수
    private Timestamp convertToTimestamp(String date) {
        try {
            if (date == null || date.isEmpty()) {
                throw new IllegalArgumentException("날짜 값이 비어 있습니다.");
            }
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            return new Timestamp(dateFormat.parse(date).getTime()); // 기본적으로 00:00:00 설정
        } catch (Exception e) {
            throw new RuntimeException("날짜 변환에 실패했습니다: " + date, e);
        }
    }
    
    @ResponseBody
    @PostMapping("/hanok/reservation")
    public Map<String, Object> reservation(
    		@RequestBody Map<String, Object> data) {
    	Map<String, Object> response = new HashMap<>();
    	
    	CustomerVO vo = new CustomerVO();
        vo.setReservations_id((Long)data.get("reservations_id"));
        vo.setCheckin(convertToTimestamp((String) data.get("checkin")));
        vo.setCheckout(convertToTimestamp((String) data.get("checkout")));
        vo.setReservation_price(Integer.parseInt(data.get("reservation_price").toString())); // 숫자 변환
        vo.setReservation_name((String) data.get("reservation_name"));
        vo.setPay_type((String) data.get("pay_type"));
        vo.setCustomer_id(Integer.parseInt(data.get("customer_id").toString())); // 숫자 변환
        vo.setRoom_id(Integer.parseInt(data.get("room_id").toString())); // 숫자 변환
    	
    	if(service.reservation(vo)) {
            response.put("success", true);
            response.put("message", "예약을 성공적으로 완료하였습니다.");
    	} else {
            // 결제 실패
            response.put("success", false);
            response.put("message", "예약을 실패하였습니다.");
        }
    	return response;
    }
    
    // 한옥 예약 확인 - (민규)
    @GetMapping("/hanok/hanok_booking_confirm.do")
    public String hanokBookingConfirm(Model model, HttpSession sess,
    		@RequestParam("hanok_id") int hanok_id,
    		@RequestParam("room_id") int room_id,
    		@RequestParam("reservations_id") long reservations_id,
    		@RequestParam("checkin") String checkin,
    		@RequestParam("checkout") String checkout,
    		@RequestParam("reservation_name") String reservation_name,
    		@RequestParam("pay_type") String pay_type,
    		@RequestParam("capacity") String capacity,
    		@RequestParam("phone") String phone) {
        // 세션에서 로그인 정보 가져오기
        CustomerVO loginInfo = (CustomerVO) sess.getAttribute("loginInfo");
        if (loginInfo == null) {
            return "redirect:/customer/login.do";
        }

        Map<String, Object> hanokDetailMap = service.getHanokDetail(hanok_id);
        Map<String, Object> roomDetailMap = service.getRoomDetail(room_id);
        String hanok_imgName = service.getHanokImg(hanok_id);
        
        model.addAttribute("hanokMap", hanokDetailMap);
        model.addAttribute("roomMap", roomDetailMap);
        model.addAttribute("hanok_imgName", hanok_imgName);
		model.addAttribute("hanok_id", hanok_id);
    	model.addAttribute("room_id", room_id);
        model.addAttribute("reservations_id", reservations_id);
        model.addAttribute("checkin", checkin);
        model.addAttribute("checkout", checkout);
        model.addAttribute("reservation_name", reservation_name);
        model.addAttribute("pay_type",pay_type);
        model.addAttribute("capacity",capacity);
        model.addAttribute("phone",phone);
        model.addAttribute("customer", loginInfo);
    	return "/hanok/hanok_booking_confirm";
    }
}
