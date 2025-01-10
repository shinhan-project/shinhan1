package kr.co.hanokproject.enroll;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EnrollMapper {

	int tempSave(EnrollVO enrollVO);
	int hanokImageSave(EnrollHanokImageVO enrollHanokImagesVO);
	int roomSave(EnrollRoomVO enrollRoomVO);
	int roomImageSave(EnrollRoomImageVO enrollRoomImageVO);
}