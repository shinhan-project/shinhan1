package kr.co.hanokproject.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
=======
import kr.co.hanokproject.admin.AdminVO;



@Mapper
public interface AdminMapper {


	List<AdminVO> list(AdminVO adminvo);
	
	AdminVO adminlogin(Map map);
	
	

	
}