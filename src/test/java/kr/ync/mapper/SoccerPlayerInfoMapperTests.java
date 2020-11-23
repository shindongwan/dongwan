package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;


import kr.ync.domain.SoccerPlayerInfoVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class SoccerPlayerInfoMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private SoccerPlayerInfoMapper playerinfo;

	@Test
	public void testInsert() {
		
		SoccerPlayerInfoVO sc_playerinfo = new SoccerPlayerInfoVO();
		
		
		sc_playerinfo.setPosition("FW");
		sc_playerinfo.setImage("image10.jpg");
		sc_playerinfo.setPlayer_name("Terry");
		sc_playerinfo.setBack_number(26);
		sc_playerinfo.setBirth("1986/12/11");
		sc_playerinfo.setNation("England");
		sc_playerinfo.setHeight(189);
		sc_playerinfo.setWeight(92);
		
		
		playerinfo.insert(sc_playerinfo);
		
		log.info(sc_playerinfo);
	}

}
