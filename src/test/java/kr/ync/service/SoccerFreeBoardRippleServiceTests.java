package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.SoccerFreeBoardRippleVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class SoccerFreeBoardRippleServiceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private SoccerFreeBoardRippleService free_board_ripple;
	
	@Test
	public void testRegister() {

		SoccerFreeBoardRippleVO sc_free_board_ripple = new SoccerFreeBoardRippleVO();
		sc_free_board_ripple.setBoard_idx(1);
		sc_free_board_ripple.setContent("유익한 정보네요.");
		sc_free_board_ripple.setMember_id("jun");

		free_board_ripple.register(sc_free_board_ripple);

		log.info("생성된 id 값 : " + sc_free_board_ripple.getBoard_ripple_idx());
	}
	

}
