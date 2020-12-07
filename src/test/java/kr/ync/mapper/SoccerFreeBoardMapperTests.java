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
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	   "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class SoccerFreeBoardMapperTests {

	
	@Setter(onMethod_ = @Autowired)
	private SoccerFreeBoardMapper freeboard;

//	@Test
//	public void testInsert() {
//		
//		SoccerFreeBoardVO sc_freeboard = new SoccerFreeBoardVO();
//		
//		sc_freeboard.setTitle("chelsea Lampard");
//		sc_freeboard.setContent("blues");
//		sc_freeboard.setImage("Lampard.jpg");
//		sc_freeboard.setMember_id("blues");
//		
//		freeboard.insert(sc_freeboard);
//		
//		log.info(sc_freeboard);
//	}
	
//	@Test
//	public void testUpdate() {
//
//		SoccerFreeBoardVO sc_freeboard = new SoccerFreeBoardVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		sc_freeboard.setBoard_idx(836);
//		sc_freeboard.setTitle("수정된 제목");
//		sc_freeboard.setContent("수정된 내용");
//		sc_freeboard.setMember_id("shin");
//		sc_freeboard.setImage("gd");
//
//		int count = freeboard.update(sc_freeboard);
//		log.info("UPDATE COUNT: " + count);
//
//	}
	
//	@Test
//	public void testGetList() {
//		
//		freeboard.getList().forEach(free_board -> log.info(free_board));
//	}
	
//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(2);
//	    cri.setAmount(10);
//
//
//		List<SoccerFreeBoardVO> list = freeboard.getListWithPaging(cri);
//
//		list.forEach(free_board -> log.info(free_board));
//
//	}
	
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
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + freeboard.delete(837L));
//	}

}
