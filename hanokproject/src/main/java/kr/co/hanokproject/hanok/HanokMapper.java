package kr.co.hanokproject.hanok;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface HanokMapper {

	// 특정 사업장의 예약 목록을 조회
    List<HanokVO> getHanokListings(int owner_id);

}
