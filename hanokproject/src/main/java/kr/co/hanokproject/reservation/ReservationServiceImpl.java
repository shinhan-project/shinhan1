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
    public ReservationVO getReservationById(int reservation_id) {
        return mapper.getReservationById(reservation_id);
    }

	
	

	//earning
	@Override
	public int getReservationEarning(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getReservationEarning(owner_id);
	}
	//리뷰 카운트
	@Override
	public int getReservationReviewCount(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getReservationReviewCount(owner_id);
	}



	@Override
	public int getReservationCount(int owner_id) {
		// TODO Auto-generated method stub
		return mapper.getReservationCount(owner_id);
	}



	@Override
	public List<ReservationVO> getCustomerReservations(int customer_id) {
		return mapper.getCustomerReservations(customer_id);
	}

}
