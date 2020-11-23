package kr.ync.domain;

import lombok.Data;

@Data
public class SoccerScheduleVO {
	
	private int schedule_idx;	
	private String match_date;
	private String rival_team;
	private String match_time;
	private String type;

}
