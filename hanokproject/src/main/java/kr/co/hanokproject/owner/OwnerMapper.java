package kr.co.hanokproject.owner;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface OwnerMapper {

	List<OwnerVO> list(OwnerVO vo);

	OwnerVO login(Map map);

	// 회원 가입
	int regist(OwnerVO vo);

	// 사장정보 조회
	OwnerVO detail(OwnerVO vo);

	// 사장장정보 수정
	int update(OwnerVO vo);
}