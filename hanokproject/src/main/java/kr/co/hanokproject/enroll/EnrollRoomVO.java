package kr.co.hanokproject.enroll;

import lombok.Data;

@Data
public class EnrollRoomVO {
int room_id;
String room_name;
int room_price;
int room_size;
int max_capacity;
String room_service;
int hanok_id;
String room_ImageBase64Data;
String room_imageExtension;
}
