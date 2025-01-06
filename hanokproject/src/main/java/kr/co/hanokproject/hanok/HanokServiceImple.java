package kr.co.hanokproject.hanok;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HanokServiceImple implements HanokService {

	@Autowired
	private HanokMapper mapper;

	@Override
	public List<HanokVO> getHanokListings(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getHanokListings(owner_id);
	}


}
