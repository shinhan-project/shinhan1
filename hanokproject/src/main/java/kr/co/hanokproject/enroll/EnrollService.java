package kr.co.hanokproject.enroll;


public interface EnrollService {
	boolean tempSave(EnrollVO enrollVO);
	boolean hanokImageSave(EnrollHanokImageVO enrollHanokImageVO);
	boolean roomSave(EnrollRoomVO enrollRoomVO);
	boolean roomImageSave(EnrollRoomImageVO enrollRoomImageVO);
}
