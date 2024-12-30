package kr.co.hanokproject.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {

			// 가입
			int regist(CustomerVO vo);
			
			List<CustomerVO> list(CustomerVO vo);
			
			// 이메일 중복체크
			int emailCheck(String customer_email);
	
	
	

}