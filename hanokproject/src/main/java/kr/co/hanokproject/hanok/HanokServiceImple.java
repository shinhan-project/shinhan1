package kr.co.hanokproject.hanok;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.room.RoomVO;

@Service
public class HanokServiceImple implements HanokService {

	@Autowired
	private HanokMapper mapper;

	@Override
	public List<HanokVO> getHanokListings(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getHanokListings(owner_id);
	}

	@Override
	public HanokVO getHanokById(int hanok_id) {
		// TODO Auto-generated method stub
		return mapper.getHanokById(hanok_id);
	}

	@Override
	public List<HanokVO> getAuthorization(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getAuthorization(owner_id);
	}



	








}
