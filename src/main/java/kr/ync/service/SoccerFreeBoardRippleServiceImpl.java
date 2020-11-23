package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.SoccerFreeBoardRippleVO;

import kr.ync.mapper.SoccerFreeBoardRippleMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerFreeBoardRippleServiceImpl implements SoccerFreeBoardRippleService {
	
	@Autowired
	private SoccerFreeBoardRippleMapper free_board_ripple;

	@Override
	public void register(SoccerFreeBoardRippleVO soccer_free_board_ripple) {
		// TODO Auto-generated method stub
		log.info("register......" + soccer_free_board_ripple);

		free_board_ripple.insert(soccer_free_board_ripple);
		
	}

	
	
	

}
