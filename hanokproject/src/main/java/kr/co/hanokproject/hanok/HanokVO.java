package kr.co.hanokproject.hanok;

import java.util.List;

import lombok.Data;

@Data
public class HanokVO {
	
	//한옥
	
		private int hanok_id;
	
		private String hanok_name;
		private String hanok_tel;
		private String hanok_address;
		private String hanok_url;
		private String hanok_description;
		private boolean[] hanok_service;
		private String hanok_serviceETC;
		private int hanok_status;
		private double hanok_score;
		private String hanok_imgName;
		
	
		

}
