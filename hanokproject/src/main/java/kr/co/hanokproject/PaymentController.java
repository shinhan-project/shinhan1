package kr.co.hanokproject;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import kr.co.hanokproject.customer.CustomerVO;

@Controller
@PropertySource("classpath:db.properties")
public class PaymentController {

	private final IamportClient iamportClient;
	
    @Value("${imp.api.key}")
    private String REST_API_KEY;
    
    @Value("${imp.api.secretkey}")
    private String REST_API_SECRET;
    
    public PaymentController() {
        this.iamportClient = new IamportClient("REST_API_KEY", "REST_API_SECRET");
    }

    @PostMapping("/hanok/verify/{imp_uid}")
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
    
    // 한옥 예약 확인 - 미완(민규)
    @GetMapping("/hanok/hanok_booking_confirm.do")
    public String hanokBookingConfirm(Model model, HttpSession sess) {
        // 세션에서 로그인 정보 가져오기
        CustomerVO loginInfo = (CustomerVO) sess.getAttribute("loginInfo");
        if (loginInfo == null) {
            return "redirect:/customer/login.do";
        }


        model.addAttribute("customer", loginInfo);
    	return "/hanok/hanok_booking_confirm";
    }
}
