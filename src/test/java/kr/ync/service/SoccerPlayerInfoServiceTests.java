package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import kr.ync.domain.SoccerPlayerInfoVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class SoccerPlayerInfoServiceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private SoccerPlayerInfoService player_info;
	
	@Test
	public void testRegister() {

		SoccerPlayerInfoVO sc_player_info = new SoccerPlayerInfoVO();
		
		
		sc_player_info.setPosition("MF");
		sc_player_info.setImage("kante.jpg");
		sc_player_info.setPlayer_name("Kante");
		sc_player_info.setBack_number(7);
		sc_player_info.setBirth("1993/4/17");
		sc_player_info.setNation("France");
		sc_player_info.setHeight(169);
		sc_player_info.setWeight(70);

		player_info.register(sc_player_info);

		log.info("생성된 id 값 : " + sc_player_info.getInfo_idx());
	}
}
