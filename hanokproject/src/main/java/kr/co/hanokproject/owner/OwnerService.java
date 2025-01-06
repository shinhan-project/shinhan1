package kr.co.hanokproject.owner;

import java.util.List;
import java.util.Map;



public interface OwnerService {
	Map<String, Object> list(OwnerVO vo);
	OwnerVO login(Map map);
	

	// 회원가입
	
	boolean regist(OwnerVO vo);

	OwnerVO detail(OwnerVO vo);
	
	// 회원정보 수정
	int update(OwnerVO vo);



}