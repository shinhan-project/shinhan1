package kr.co.hanokproject.owner;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.hanok.HanokVO;
import kr.co.hanokproject.owner.OwnerVO;

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
		return mapper.login(map);
	}
	
	//회원 가입 
		@Override
		   public boolean regist(OwnerVO vo) {
		      
		      return mapper.regist(vo) == 0 ? false : true;
		   }
		
		@Override
		   public OwnerVO detail(OwnerVO vo) {
		      return mapper.detail(vo);
		   }

		@Override
		public int update(OwnerVO vo) {
			// TODO Auto-generated method stub
			return mapper.update(vo);
		}

	
}
