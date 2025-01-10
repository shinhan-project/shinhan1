package kr.co.hanokproject.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanokproject.hanok.HanokVO;



@Mapper
public interface AdminMapper {


	List<AdminVO> list(AdminVO adminvo);
	
	AdminVO adminlogin(Map map);
	
	
	 int getReservationCount(int hanok_id);
	 int getReservationEarning(int hanok_id);
	 int getReservationReviewCount(int hanok_id);

	List<HanokVO> getRequest(int owner_id);
}