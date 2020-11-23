package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SoccerPlayerInfoVO {
	
	private int info_idx;	
	private String position;
	private String image;
	private String player_name;
	private int back_number;
	private String birth;
	private String nation;
	private int height;
	private int weight;

}
