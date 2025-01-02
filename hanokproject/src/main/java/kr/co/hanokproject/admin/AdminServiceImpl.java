package kr.co.hanokproject.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.admin.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;

	
	
	@Override
	public AdminVO login(Map map) {
		return mapper.login(map);
	}
	

	@Override
	public Map<String, Object> list(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
}
