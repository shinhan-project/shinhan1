package kr.co.hanokproject;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@PropertySource("classpath:db.properties")
public class PaymentController {

	private final IamportClient iamportClient;
	
    @Value("${imp.api.key}") // imp.api.key 값을 주입
    private String REST_API_KEY;
    
    @Value("${imp.api.secretkey}")
    private String REST_API_SECRET;
    
    public PaymentController() {
        this.iamportClient = new IamportClient("REST_API_KEY",
                "REST_API_SECRET");
    }

    @ResponseBody
    @RequestMapping("/verify/{imp_uid}")
    public IamportResponse<Payment> paymentByImpUid(@PathVariable("imp_uid") String imp_uid)
            throws IamportResponseException, IOException {
        return iamportClient.paymentByImpUid(imp_uid);
    }

}
