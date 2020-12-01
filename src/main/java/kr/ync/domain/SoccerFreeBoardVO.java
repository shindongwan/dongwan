package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SoccerFreeBoardVO {
	
	private int board_idx;
	private String title;
	private String content;
	private String image;
	private String member_id;
	private Date regist_day;

	
	private String file_1;
	private String file_2;
	private String file_3;
}
