package kr.co.hanokproject.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationMapper mapper;

	@Override
	public List<ReservationVO> getOwnerReservations(int owner_id) {
		return mapper.getReservationsByOwnerId(owner_id);
	}

	@Override
	public List<ReservationVO> getCustomerReservations(int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
