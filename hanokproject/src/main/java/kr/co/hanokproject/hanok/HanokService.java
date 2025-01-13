package kr.co.hanokproject.hanok;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.hanokproject.room.RoomVO;


@Service
public interface HanokService {

	

	List<HanokVO> getHanokListings(int owner_id);

	HanokVO getHanokById(int hanok_id);

    boolean updateHanokStatus(int hanok_id, int status);

}

