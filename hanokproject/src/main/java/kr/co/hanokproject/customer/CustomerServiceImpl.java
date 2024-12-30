package kr.co.hanokproject.customer;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	
	@Override
	public boolean regist(CustomerVO vo) {
		
		return mapper.regist(vo) == 0 ? false : true;
	}

	@Override
	public int emailCheck(String customer_email) {
		return mapper.emailCheck(customer_email);
	}

	@Override
	public Map<String, Object> list(CustomerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
}