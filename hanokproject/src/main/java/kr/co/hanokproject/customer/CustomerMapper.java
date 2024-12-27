package kr.co.hanokproject.customer;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {
	List<CustomerVO> list(CustomerVO vo);

}