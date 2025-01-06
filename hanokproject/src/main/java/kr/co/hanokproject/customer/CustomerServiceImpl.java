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
    public CustomerVO getHanokDetail(int hanokId) {
        // 한옥 상세 정보를 Mapper에서 가져옴
        return mapper.getHanokDetail(hanokId);
    }

    @Override
    public List<CustomerVO> getRoomList(int hanokId) {
        // 한옥의 방 리스트를 Mapper에서 가져옴
        return mapper.getRoomList(hanokId);
    }

    @Override
    public List<CustomerVO> getReviews(int hanokId) {
        // 한옥의 리뷰 리스트를 Mapper에서 가져옴
        return mapper.getReviews(hanokId, 3); // 최대 3개의 리뷰만 가져옴
    }
}
