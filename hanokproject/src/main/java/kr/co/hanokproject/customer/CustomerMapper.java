package kr.co.hanokproject.customer;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanokproject.customer.CustomerVO;

@Mapper
public interface CustomerMapper {

	List<CustomerVO> list(CustomerVO vo);
	CustomerVO login(Map map);
	
	
	

}