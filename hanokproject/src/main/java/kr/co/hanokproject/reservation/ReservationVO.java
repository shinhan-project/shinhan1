package kr.co.hanokproject.reservation;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReservationVO {
	//예약
		private int reservations_id;
		private Timestamp checkin;
		private Timestamp checkout;
		private Timestamp created_at;
		private Timestamp modified_at;
		private String status;
		private int reservation_price;
		private String reservation_name;
}
