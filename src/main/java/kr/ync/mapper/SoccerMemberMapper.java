package kr.ync.mapper;

import kr.ync.domain.MemberVO;
import kr.ync.domain.SoccerMemberVO;

public interface SoccerMemberMapper {

	public void insert(SoccerMemberVO soccer_member);

	public SoccerMemberVO read(String userName);
}
