package kr.co.hanokproject.customer;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanokproject.customer.CustomerMapper;
import kr.co.hanokproject.customer.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	

	
	
	@Override
	public CustomerVO login(Map map) {
		return mapper.login(map);
	}

	@Override
	public Map<String, Object> list(CustomerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 한옥 검색
	@Override
	public Map<String, Object> searchHanok(CustomerVO customerVO) {
		System.out.println("log : getHanokWithPagenation");
		int count = mapper.count(customerVO); // 총개수
        // 총페이지수
		int totalPage = (int) Math.ceil(count / 6.0);
		customerVO.setStartIdx((customerVO.getPage() - 1) * 6);
        
		List<CustomerVO> list = mapper.searchHanok(customerVO);
			
		Map<String, Object> map = new HashMap<>();
	    map.put("count", count);
	    map.put("totalPage", totalPage);
	    map.put("list", list);

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