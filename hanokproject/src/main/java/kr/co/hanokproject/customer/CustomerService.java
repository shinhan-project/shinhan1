package kr.co.hanokproject.customer;

import java.util.List;
import java.util.Map;

import kr.co.hanokproject.hanok.HanokVO;

public interface CustomerService {

	Map<String, Object> list(CustomerVO vo);

	// 로그인
	CustomerVO login(Map map);

	// 회원가입
	boolean regist(CustomerVO vo);
	
	CustomerVO detail(CustomerVO vo);

	// 회원정보 수정
	int update(CustomerVO vo);

	// 한옥 검색 리스트
	Map<String, Object> searchHanok(CustomerVO customerVO);

	// 한옥 상세 정보 조회
	Map<String, Object> getHanokDetail(int hanok_id);
	
	// 한옥 사진 조회
	String getHanokImg(int hanok_id);
	

	// 한옥에 연결된 리뷰 리스트 조회
	List<CustomerVO> getReviews(int hanokId);
	
	// 객실 상세 정보 조회
	Map<String, Object> getRoomDetail(int room_id);

	// 예약
	boolean reservation(CustomerVO vo);
	
	List<HanokVO> getAllHanoks();

	int idCheck(int customer_id);

	
	
}