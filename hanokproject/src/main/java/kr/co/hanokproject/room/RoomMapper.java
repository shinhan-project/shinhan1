package kr.co.hanokproject.room;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RoomMapper {
	List<RoomVO> getRoomList(int hanok_id);


}
