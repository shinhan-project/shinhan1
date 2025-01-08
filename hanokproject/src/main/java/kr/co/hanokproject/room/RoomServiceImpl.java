package kr.co.hanokproject.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomMapper mapper;

	@Override
	public List<RoomVO> getRoomList(int hanok_id) {
		// TODO Auto-generated method stub
		return mapper.getRoomList(hanok_id);
	}
	
}
