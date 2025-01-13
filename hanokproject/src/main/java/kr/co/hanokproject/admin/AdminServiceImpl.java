package kr.co.hanokproject.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.hanok.HanokVO;
import kr.co.hanokproject.reservation.ReservationVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;

	
	
	@Override
	public AdminVO adminlogin(Map map) {
		return mapper.adminlogin(map);
	}
	

	@Override
	public Map<String, Object> list(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	

	@Override
	public int getReservationCount(int hanok_id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int getReservationEarning(int hanok_id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int getReservationReviewCount(int hanok_id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<ReservationVO> getOwnerReservations(int owner_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HanokVO> getRequest(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getRequest(owner_id);
	}




}
