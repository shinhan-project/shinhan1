package kr.co.hanokproject.customer;

import java.util.Map;

public interface CustomerService {
	Map<String, Object> list(CustomerVO vo);
	boolean regist(CustomerVO vo);
	int emailCheck(String customer_email);
}