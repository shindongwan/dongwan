package kr.ync.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.ync.domain.SoccerMemberVO;
import kr.ync.mapper.SoccerMemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerMemberServiceImpl implements SoccerMemberService{
	@Autowired
	private SoccerMemberMapper member;
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	@Override
	public void register(SoccerMemberVO soccer_member) {

		log.info("register......" + soccer_member);
		
		String inputPass = soccer_member.getPwd();
		String pass = passEncoder.encode(inputPass);
		soccer_member.setPwd(pass);

		member.insert(soccer_member);
	}
	
	
}
