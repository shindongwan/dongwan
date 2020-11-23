package kr.ync.service;

import java.util.List;

import kr.ync.domain.Criteria;
import kr.ync.domain.SoccerFreeBoardVO;


public interface SoccerFreeBoardService {
	
	// 글 등록
	public void register(SoccerFreeBoardVO soccer_free_board);
	
	// 글 상세보기
	public SoccerFreeBoardVO get(Long board_idx);
//		
//	// 글 수정
	public boolean modify(SoccerFreeBoardVO soccer_free_board);
//		
//	// 글 삭제
	public boolean remove(Long board_idx);
//		
//	// 전체 글 목록
//	public List<BoardVO> getList();
//		
//	// 글 목록 페이징 
//	public List<BoardVO> getListWithPaging(Criteria cri);
//
//	//추가
//	public int getTotal(Criteria cri);
	
	// 전체 글 목록
	   public List<SoccerFreeBoardVO> getList();
	//   
	//   // 글 목록 페이징 
	   public List<SoccerFreeBoardVO> getListWithPaging(Criteria cri);
	//
	//   //추가
	   public int getTotal(Criteria cri);



	

}
