package kr.co.hanokproject.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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

	// 방 리스트 조회
	List<CustomerVO> getRoomList(int hanokId);

	// 리뷰 리스트 조회 (최대 n개)
	List<CustomerVO> getReviews(@Param("hanokId") int hanokId, @Param("limit") int limit);

	// 회원 가입
	int regist(CustomerVO vo);

	// 회원정보 조회
	CustomerVO detail(CustomerVO vo);

	// 회원정보 수정
	int update(CustomerVO vo);

}