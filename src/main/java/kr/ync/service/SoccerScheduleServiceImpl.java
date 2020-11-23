package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.ync.domain.SoccerScheduleVO;

import kr.ync.mapper.SoccerScheduleMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerScheduleServiceImpl implements SoccerScheduleService{
	@Autowired
	private SoccerScheduleMapper schedule;

	@Override
	public void register(SoccerScheduleVO soccer_schedule) {
		// TODO Auto-generated method stub
		log.info("register......" + soccer_schedule);

		schedule.insert(soccer_schedule);
	}

	
	
	
	
}
