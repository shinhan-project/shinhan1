package kr.co.hanokproject.review;

import java.sql.Timestamp;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class ReviewVO {
    private int review_id;
    private int reservations_id;
    private int customer_id;
    private int hanok_id;
    private int room_id;
    private String review_title;
    private String review_content;
    private int rating;
    private Timestamp review_date;
    private String hanok_name;
    
    private String hanok_imgName;
}
