package kr.co.hanokproject.admin;

import lombok.Data;

@Data
public class AdminVO {
	//관리자
	private int admin_id;
	private String admin_pwd;
	private String admin_email;
	
	
//	private int page; // 사용자가 요청한 페이지 번호
//	private int startIdx;  // limit 앞에 들어갈 시작인덱스값
//	
//	public AdminVO() {
//		this.page = 1;
//	}
//	public int getStartIdx() {
//		return (page-1) * 6;
//	}
	
}
