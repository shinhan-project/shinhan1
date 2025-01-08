package kr.co.hanokproject.room;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface RoomService {

	List<RoomVO> getRoomList(int hanok_id);
}
	
