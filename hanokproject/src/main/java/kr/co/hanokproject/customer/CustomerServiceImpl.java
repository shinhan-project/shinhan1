package kr.co.hanokproject.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	

	//로그인
	
	@Override
	public CustomerVO login(Map map) {
		return mapper.login(map);
	}
	
	//회원 가입 
	@Override
	   public boolean regist(CustomerVO vo) {
	      
	      return mapper.regist(vo) == 0 ? false : true;
	   }
	//정보 조회
	@Override
	   public CustomerVO detail(CustomerVO vo) {
	      return mapper.detail(vo);
	   }

	//정보 수정
	   @Override
	   public int update(CustomerVO vo) {
	      return mapper.update(vo);
	   }

	@Override
	public Map<String, Object> list(CustomerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 한옥 검색
	@Override
	public Map<String, Object> searchHanok(CustomerVO customerVO) {
		System.out.println("log : searchHanok");
		int count = mapper.count(customerVO); // 총개수
        // 총페이지수
		int totalPage = count / 6;
        if (count % 6 > 0) totalPage++;
        
		List<CustomerVO> list = mapper.searchHanok(customerVO);
			
		Map<String, Object> map = new HashMap<>();
	    map.put("count", count);
	    map.put("totalPage", totalPage);
	    map.put("list", list);
	    
	    int endPage = (int)(Math.ceil(customerVO.getPage()/6.0)*6);
        int startPage = endPage - 5;
        if (endPage > totalPage) endPage = totalPage;
        boolean isPrev = startPage > 1;
        boolean isNext = endPage < totalPage;
        map.put("endPage", endPage);
        map.put("startPage", startPage);
        map.put("isPrev", isPrev);
		map.put("isNext", isNext);
		map.put("currentPage", customerVO.getPage());
//		map.put("startIdx", customerVO.getStartIdx());

	    return map;
	}
	
	@Override
    public Map<String, Object> getHanokDetail(int hanok_id) {
        // 한옥 상세 정보
		CustomerVO hanokVO = mapper.getHanokInfo(hanok_id);
		
		// 한옥 이미지 정보
		String hanokImg = mapper.getHanokImg(hanok_id);
		
        // 객실 목록
        List<CustomerVO> roomList = mapper.getRoomList(hanok_id);

        // 객실 이미지
        Map<Integer, List<CustomerVO>> roomImgMap = new HashMap<>();
        for (CustomerVO room : roomList) {
            List<CustomerVO> roomImgList = mapper.getRoomImages(room.getRoom_id());
            roomImgMap.put(room.getRoom_id(), roomImgList);
        }

        // 결과 맵 구성
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("hanokInfo", hanokVO);
        resultMap.put("hanokImg", hanokImg);
        resultMap.put("roomList", roomList);
        resultMap.put("roomImgMap", roomImgMap);

        return resultMap;
    }

    @Override
    public List<CustomerVO> getReviews(int hanok_id) {
        // 한옥의 리뷰 리스트를 Mapper에서 가져옴
        return mapper.getReviews(hanok_id, 3); // 최대 3개의 리뷰만 가져옴
    }

	@Override
	public String getHanokImg(int hanok_id) {
		// 한옥 아이디로 한옥 이미지 한 장 가져옴
		return mapper.getHanokImg(hanok_id);
	}


	@Override
	public Map<String, Object> getRoomDetail(int room_id) {
        // 객실 상세 정보
		CustomerVO roomVO = mapper.getRoomInfo(room_id);
		
		// 결과 맵 구성
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("roomInfo", roomVO);
		return resultMap;
	}

	@Override
	public boolean reservation(CustomerVO vo) {
		return mapper.reservation(vo) == 0 ? false : true;
	}

}
