package kr.co.hanokproject.owner;

import java.util.Map;

import kr.co.hanokproject.owner.OwnerVO;
import kr.co.hanokproject.customer.CustomerVO;

public interface OwnerService {
	//관리자
	Map<String, Object> list(OwnerVO vo);
	OwnerVO login(Map map);

}