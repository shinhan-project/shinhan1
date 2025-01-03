package kr.co.hanokproject.reservation;

import java.sql.Timestamp;

import lombok.Data;


@Data
public class ReservationVO {
	private int reservations_id;
	private Timestamp checkin;
	private Timestamp checkout;
	private Timestamp res_created_at;
	private Timestamp res_modified_at;
	private String res_status;
	private int reservation_price;
	private String reservation_name;
	private int customer_id;
    private int hanok_id;
    private int room_id;
    
    private String hanok_name;
    
}
