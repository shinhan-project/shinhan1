package kr.co.hanokproject.hanok;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;




@Mapper
public interface HanokMapper {

	// 특정 사업장의 예약 목록을 조회
    List<HanokVO> getHanokListings(int owner_id);

	HanokVO getHanokById(int hanok_id);

	List<HanokVO> getAuthorization(int owner_id);

	List<HanokVO> getRequestAuthorization(int owner_id);
	

	

	

	int updateHanokStatus(Map<String, Object> paramMap);
	
	

	

}
