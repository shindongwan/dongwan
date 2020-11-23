package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.SoccerMemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class SoccerMemberServiceTests {
	@Setter(onMethod_ = { @Autowired })
	private SoccerMemberService member;
	
	@Test
	public void testRegister() {

		SoccerMemberVO sc_member = new SoccerMemberVO();
		sc_member.setMember_id("shindongwan");
		sc_member.setEmail("sdw1111@naver.com");
		sc_member.setPwd("1234");
		sc_member.setNick("테리");
		sc_member.setName("존테리");

		member.register(sc_member);

		log.info("생성된 id 값 : " + sc_member.getMember_id());
	}
}
