package kr.co.hanokproject.enroll;

import lombok.Data;

@Data
public class EnrollRoomImageVO {
	int room_imgIndex;
	String room_imgName;
	int room_id;
	String room_ImageBase64Data;
}
