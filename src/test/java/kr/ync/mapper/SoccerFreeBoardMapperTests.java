package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;



import kr.ync.domain.Criteria;
import kr.ync.domain.SoccerFreeBoardVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class SoccerFreeBoardMapperTests {

	
	@Setter(onMethod_ = @Autowired)
	private SoccerFreeBoardMapper freeboard;

//	@Test
//	public void testInsert() {
//		
//		SoccerFreeBoardVO sc_freeboard = new SoccerFreeBoardVO();
//		
//		sc_freeboard.setTitle("음~그래 반갑고");
//		sc_freeboard.setContent("음 그래 반갑다");
//		sc_freeboard.setImage("image3.jpg");
//		sc_freeboard.setMember_id("비녁");
//		
//		freeboard.insert(sc_freeboard);
//		
//		log.info(sc_freeboard);
//	}
	
//	@Test
//	public void testGetList() {
//		
//		freeboard.getList().forEach(free_board -> log.info(free_board));
//	}
	
	@Test
	public void testPaging() {

		Criteria cri = new Criteria();
		
	    //10개씩 3페이지 
	    cri.setPageNum(1);
	    cri.setAmount(10);


		List<SoccerFreeBoardVO> list = freeboard.getListWithPaging(cri);

		list.forEach(free_board -> log.info(free_board));

	}
	
//	@Test
//	public void testGetTotalCount() {
//		
//		Criteria cri = new Criteria();
//		
//		int totalCnt = freeboard.getTotalCount(cri);
//
//		log.info("totalCnt = " + totalCnt);
//
//	}

}
