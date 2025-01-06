package kr.co.hanokproject.pay;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PayVO {

	
	//결제
		private int pay_id;
		private int pay_price;
		private Timestamp pay_date;
		private String pay_type;
		private Timestamp pay_created_at;
		private Timestamp pay_modified_at;
		
}
