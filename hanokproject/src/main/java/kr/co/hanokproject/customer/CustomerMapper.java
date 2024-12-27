package kr.co.hanokproject.customer;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanok.customer.CustomerVO;

@Mapper
public interface CustomerMapper {
		// 가입
		int regist(CustomerVO vo);
		
		List<CustomerVO> list(CustomerVO vo);
		
		// 이메일 중복체크
		int emailCheck(String customer_email);
}