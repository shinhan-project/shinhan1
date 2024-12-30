package kr.co.hanokproject.owner;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanokproject.owner.OwnerVO;

@Mapper
public interface OwnerMapper {

	List<OwnerVO> list(OwnerVO vo);

	OwnerVO login(Map map);
}