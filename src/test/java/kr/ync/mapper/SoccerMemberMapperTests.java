package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.MemberVO;
import kr.ync.domain.SoccerMemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class SoccerMemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private SoccerMemberMapper member;

//	@Test
//	public void testInsert() {
//		
//		SoccerMemberVO sc_member = new SoccerMemberVO();
//		sc_member.setMember_id("jun");
//		sc_member.setEmail("mihyeok@naver.com");
//		sc_member.setPwd("1234");
//		sc_member.setNick("뱀");
//		sc_member.setName("배민혁");
//		
//		member.insert(sc_member);
//		
//		log.info(sc_member);
//	}
	
	@Test
	public void testRead() {

		SoccerMemberVO vo = member.read("user1");

		log.info(vo);
		
		vo.getAuth().forEach(authVO -> log.info(authVO));

	}
	
	
}
