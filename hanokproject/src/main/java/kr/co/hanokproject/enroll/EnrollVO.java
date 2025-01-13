package kr.co.hanokproject.enroll;

import lombok.Data;

@Data
public class EnrollVO {
	
	//한옥
		private int hanok_id;
		private int owner_id;
		private String hanok_name;
		private String hanok_tel;
		private String hanok_address;
		private String hanok_url;
		private String hanok_description;
		private int hanok_service0;
		private int hanok_service1;
		private int hanok_service2;
		private int hanok_service3;
		private int hanok_service4;
		private int hanok_service5;
		private int hanok_service6;
		private int hanok_service7;
		private String hanok_serviceETC;
		private int hanok_status;
		private double hanok_score;
		private String hanok_requestdate;
}
