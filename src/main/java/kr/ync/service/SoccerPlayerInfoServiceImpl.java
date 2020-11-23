package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.ync.domain.SoccerPlayerInfoVO;

import kr.ync.mapper.SoccerPlayerInfoMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerPlayerInfoServiceImpl implements SoccerPlayerInfoService{
	@Autowired
	private SoccerPlayerInfoMapper player_info;

	@Override
	public void register(SoccerPlayerInfoVO soccer_player_info) {
		// TODO Auto-generated method stub
		log.info("register......" + soccer_player_info);

		player_info.insert(soccer_player_info);
	}

	
	
	
}
