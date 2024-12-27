package kr.co.hanokproject.admin;

import java.util.Map;

import kr.co.hanokproject.admin.AdminVO;

public interface AdminService {

	Map<String, Object> list(AdminVO vo);

	AdminVO login(Map map);
}