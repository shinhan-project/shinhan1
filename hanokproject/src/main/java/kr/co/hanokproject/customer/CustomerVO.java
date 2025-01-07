package kr.co.hanokproject.customer;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CustomerVO {
	//고객
	private int customer_id;
	private String customer_name;
	private String customer_pwd;
	private String customer_address;
	private String customer_email;
	private String customer_tel;
	private Timestamp customer_created;
	
	//한옥
	private int hanok_id;
	private int owner_id;
	private String hanok_name;
	private String hanok_tel;
	private String hanok_address;
	private String hanok_url;
	private String hanok_description;
	private boolean[] hanok_service = new boolean[8];
	private String hanok_serviceETC;
	private int status;
	private double hanok_score;
	
	private String hanok_imgName;
	
	//객실
	private int room_id;
	private String room_name;
	private int room_price;
	private int room_size;
	private int max_capacity;
	private String room_service;
	
	private String room_imgName;
	
	//리뷰
	private int review_id;
	private String review_title;
	private String review_content;
	private Timestamp review_date;
	private int rating;
	
	//예약
	private int reservations_id;
	private Timestamp checkin;
	private Timestamp checkout;
	private Timestamp res_created_at;
	private Timestamp res_modified_at;
	private String res_status;
	private int reservation_price;
	private String reservation_name;
	
	//결제
	private int pay_id;
	private int pay_price;
	private Timestamp pay_date;
	private String pay_type;
	private Timestamp pay_created_at;
	private Timestamp pay_modified_at;
	
	//한옥 페이지
	// 사용자로부터 전송되어지는 값(검색, 페이징, 필터링(조건))
	private String location;
	private String checkInDate;
	private String checkOutDate;
	private String capacity;
	private int page; // 사용자가 요청한 페이지 번호
	private int startIdx;  // limit 앞에 들어갈 시작인덱스값
	
    private String roomImage;
    private String hanokName;
    private String roomName;
    private int roomPrice;	
	
	public CustomerVO() {
		this.page = 1;
	}
	public int getStartIdx() {
		return (page-1) * 6;
	}
}
