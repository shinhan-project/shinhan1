package kr.co.hanokproject.owner;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerServiceImpl implements OwnerService {
	@Autowired
	private OwnerMapper mapper;

	@Override
	public Map<String, Object> list(OwnerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OwnerVO login(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

}
