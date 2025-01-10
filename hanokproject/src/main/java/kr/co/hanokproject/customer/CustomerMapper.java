package kr.co.hanokproject.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.hanokproject.hanok.HanokVO;

@Mapper
public interface CustomerMapper {

	CustomerVO login(Map map);

	List<CustomerVO> list(CustomerVO customerVO);

	// 한옥 검색
	List<CustomerVO> searchHanok(CustomerVO customerVO);

	// 검색 후 한옥 수
	int count(CustomerVO customerVO);

	// 한옥 상세 정보 조회
	CustomerVO getHanokDetail(int hanokId);

	// 리뷰 리스트 조회 (최대 n개)
	List<CustomerVO> getReviews(@Param("hanokId") int hanokId, @Param("limit") int limit);

	// 회원 가입
	int regist(CustomerVO vo);

	// 회원정보 조회
	CustomerVO detail(CustomerVO vo);

	// 회원정보 수정
	int update(CustomerVO vo);

	// 한옥 이미지 조회
	String getHanokImg(int hanok_id);
	
	List<CustomerVO> getRoomImg(int hanok_id);
	
    // 한옥 상세 정보 가져오기
	CustomerVO getHanokInfo(@Param("hanok_id") int hanok_id);

    // 객실 목록 가져오기
    List<CustomerVO> getRoomList(@Param("hanok_id") int hanok_id);

    // 객실 이미지 가져오기
    List<CustomerVO> getRoomImages(@Param("room_id") int roomId);

    // 객실 상세 정보 가져오기
	CustomerVO getRoomInfo(@Param("room_id") int room_id);
	
	// 예약
	int reservation(CustomerVO vo);
	
	List<HanokVO> getAllHanoks();
}

