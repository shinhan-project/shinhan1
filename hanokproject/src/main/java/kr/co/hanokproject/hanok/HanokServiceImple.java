package kr.co.hanokproject.hanok;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	

	@Override
	public boolean updateHanokStatus(int hanok_id, int hanok_status) {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("hanok_id", hanok_id);
	    paramMap.put("hanok_status", hanok_status);  // 'hanok_status' 파라미터 전달
	    
	    int result = mapper.updateHanokStatus(paramMap);  // 수정된 행의 수 반환
	    return result > 0;  // 수정된 행이 있으면 true 반환, 없으면 false 반환
	}






}
