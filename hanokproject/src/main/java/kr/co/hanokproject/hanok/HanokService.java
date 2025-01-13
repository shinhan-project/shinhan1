package kr.co.hanokproject.hanok;

import java.util.List;

import org.springframework.stereotype.Service;



@Service
public interface HanokService {

	

	List<HanokVO> getHanokListings(int owner_id);

	HanokVO getHanokById(int hanok_id);


    boolean updateHanokStatus(int hanok_id, int hanok_status);

	List<HanokVO> getAuthorization(int owner_id);

	List<HanokVO> getRequestAuthorization(int owner_id);

	



}

