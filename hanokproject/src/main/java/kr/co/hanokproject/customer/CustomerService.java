package kr.co.hanokproject.customer;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import kr.co.hanokproject.customer.CustomerVO;

public interface CustomerService {
	
	Map<String, Object> list(CustomerVO vo);
	//로그인
	CustomerVO login(Map map);
	//회원가입
	boolean regist(CustomerVO vo);
	// 한옥 검색 리스트
	Map<String, Object> searchHanok(CustomerVO customerVO);
	
	// 한옥 상세 정보 조회
    CustomerVO getHanokDetail(int hanokId);

    // 한옥에 연결된 방 리스트 조회
    List<CustomerVO> getRoomList(int hanokId);

    // 한옥에 연결된 리뷰 리스트 조회
    List<CustomerVO> getReviews(int hanokId);
}