package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;


import kr.ync.domain.SoccerScheduleVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class SoccerScheduleMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private SoccerScheduleMapper schedule;

	@Test
	public void testInsert() {
		
		SoccerScheduleVO sc_schedule = new SoccerScheduleVO();
		
		sc_schedule.setMatch_date("2020 11 11");
		sc_schedule.setRival_team("세비야");
		sc_schedule.setMatch_time("03:00");		
		sc_schedule.setType("UEFA C/L");
		
		
		schedule.insert(sc_schedule);
		
		log.info(sc_schedule);
	}

}
