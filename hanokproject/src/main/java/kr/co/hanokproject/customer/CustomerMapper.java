package kr.co.hanokproject.customer;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanokproject.customer.CustomerVO;

@Mapper
public interface CustomerMapper {

	CustomerVO login(Map map);
	
	List<CustomerVO> list(CustomerVO customerVO);

	//한옥 검색
	List<CustomerVO> searchHanok(CustomerVO customerVO);

	//검색 후 한옥 수
	int count(CustomerVO customerVO);
	
	// 한옥 상세 정보 조회
    CustomerVO getHanokDetail(int hanokId);

    // 방 리스트 조회
    List<CustomerVO> getRoomList(int hanokId);
	
    // 리뷰 리스트 조회 (최대 n개)
    List<CustomerVO> getReviews(@Param("hanokId") int hanokId, @Param("limit") int limit);
	

}