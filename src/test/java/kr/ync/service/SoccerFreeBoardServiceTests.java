package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import kr.ync.domain.SoccerFreeBoardVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class SoccerFreeBoardServiceTests {
	@Setter(onMethod_ = { @Autowired })
	private SoccerFreeBoardService free_board;
	
//	@Test
//	public void testRegister() {
//
//		SoccerFreeBoardVO sc_free_board = new SoccerFreeBoardVO();
//		sc_free_board.setTitle("에이브러햄" );
//		sc_free_board.setContent("tamy");
//		sc_free_board.setImage("tamy.jpg");
//		sc_free_board.setMember_id("비녁");
//
//		free_board.register(sc_free_board);
//
//		log.info("생성된 id 값 : " + sc_free_board.getBoard_idx());
//	}
	
//	@Test
//	public void testGetList() {
//		
//		free_board.getList().forEach(sc_free_board -> log.info(sc_free_board));
//		
//	}
	
	@Test
	public void testGet() {

		log.info(free_board.get(383L));
	}
	
//	@Test
//	public void testDelete() {
//
//		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
//		log.info("REMOVE RESULT: " + free_board.remove(21L));
//
//	}

//	@Test
//	public void testUpdate() {
//
//		SoccerFreeBoardVO soccer_free_board = free_board.get(21L);
//
//		if (soccer_free_board == null) {
//			return;
//		}
//
////		soccer_free_board.setTitle("미녁이는 바보야");
//		soccer_free_board.setContent("현수 안녕");
//		log.info("MODIFY RESULT: " + free_board.modify(soccer_free_board));
//	}
	
	
}
