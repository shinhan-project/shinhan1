package kr.co.hanokproject.enroll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EnrollServiceImple implements EnrollService{

	@Autowired
	EnrollMapper mapper;
	
	@Override
	public boolean tempSave(EnrollVO enrollVO) {
		return mapper.tempSave(enrollVO) == 0 ? false : true;
	}
	
	@Override
	public boolean hanokImageSave(EnrollHanokImageVO enrollHanokImageVO) {
		return mapper.hanokImageSave(enrollHanokImageVO) == 0 ? false : true;
	}
	
	@Override
	public boolean roomSave(EnrollRoomVO enrollRoomVO) {
		return mapper.roomSave(enrollRoomVO) == 0 ? false : true;	
	}

	@Override
	public boolean roomImageSave(EnrollRoomImageVO enrollRoomImageVO) {
		return mapper.roomImageSave(enrollRoomImageVO) == 0 ? false : true;
	}
}
