package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.SoccerFreeBoardVO;

public interface SoccerFreeBoardMapper {
	
	
	
	public void insert(SoccerFreeBoardVO soccer_free_board);
//	
	public Integer insertSelectKey(SoccerFreeBoardVO soccer_free_board);
//	
	public SoccerFreeBoardVO read(Long board_idx);
	
	public List<SoccerFreeBoardVO> getList();
	
	public int getTotalCount(Criteria cri);

	public List<SoccerFreeBoardVO> getListWithPaging(Criteria cri);
	
	public int update(SoccerFreeBoardVO soccer_free_board);
	
	public int delete(Long board_idx);
	
}
