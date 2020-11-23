package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.SoccerMemberVO;
import kr.ync.mapper.SoccerMemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerMemberServiceImpl implements SoccerMemberService{
	@Autowired
	private SoccerMemberMapper member;

	@Override
	public void register(SoccerMemberVO soccer_member) {

		log.info("register......" + soccer_member);

		member.insert(soccer_member);
	}
	
	
}
