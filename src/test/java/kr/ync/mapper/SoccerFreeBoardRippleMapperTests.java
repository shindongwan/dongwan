package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.SoccerFreeBoardRippleVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class SoccerFreeBoardRippleMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private SoccerFreeBoardRippleMapper free_board_ripple;

	@Test
	public void testInsert() {
		
		SoccerFreeBoardRippleVO sc_free_board_ripple = new SoccerFreeBoardRippleVO();
		
		sc_free_board_ripple.setBoard_idx(1);
		sc_free_board_ripple.setContent("감사합니다.");
		sc_free_board_ripple.setMember_id("jun");
		
		free_board_ripple.insert(sc_free_board_ripple);
		
		log.info(sc_free_board_ripple);
	}

}
