package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.SoccerPlayerInfoVO;
import kr.ync.domain.SoccerScheduleVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class SoccerScheduleServiceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private SoccerScheduleService schedule;
	
	@Test
	public void testRegister() {

		SoccerScheduleVO sc_schedule = new SoccerScheduleVO();
		
		
		sc_schedule.setMatch_date("2020 11 20");
		sc_schedule.setRival_team("인터밀란");
		sc_schedule.setMatch_time("12:00");		
		sc_schedule.setType("UEFA C/L");

		schedule.register(sc_schedule);

		log.info("생성된 id 값 : " + sc_schedule.getSchedule_idx());
	}
	
	

}
