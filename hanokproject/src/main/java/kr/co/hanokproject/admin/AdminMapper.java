package kr.co.hanokproject.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {

	List<AdminVO> list(AdminVO vo);
	
	AdminVO login(Map map);
	
}