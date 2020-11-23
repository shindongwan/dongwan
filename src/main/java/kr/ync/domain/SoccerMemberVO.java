package kr.ync.domain;

import java.util.List;

import lombok.Data;

@Data
public class SoccerMemberVO {
	
	private String member_id;
	private String email;
	private String pwd;
	private String name;
	private String nick;
	private String regist_day;
	private List<AuthVO> authList;
}
