package kr.co.hanokproject.enroll;

import lombok.Data;

@Data
public class EnrollHanokImageVO {
	int hanok_imgIndex_id;
	String hanok_imgName;
	int hanok_id;
	int is_main;
	String hanok_ImageBase64Data;
	String hanok_imageExtension;
}
