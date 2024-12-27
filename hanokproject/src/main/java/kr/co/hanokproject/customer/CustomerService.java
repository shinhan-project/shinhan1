package kr.co.hanokproject.customer;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import kr.co.hanokproject.customer.CustomerVO;

public interface CustomerService {
	
	Map<String, Object> list(CustomerVO vo);

	CustomerVO login(Map map);
}