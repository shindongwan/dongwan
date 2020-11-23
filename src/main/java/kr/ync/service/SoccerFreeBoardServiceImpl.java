package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.ync.domain.Criteria;
import kr.ync.domain.SoccerFreeBoardVO;
import kr.ync.mapper.SoccerFreeBoardMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SoccerFreeBoardServiceImpl implements SoccerFreeBoardService{
	@Autowired
	private SoccerFreeBoardMapper free_board;

	@Override
	public void register(SoccerFreeBoardVO soccer_free_board) {
		
		log.info("register......" + soccer_free_board);

		free_board.insert(soccer_free_board);
		
	}

	@Override
	 public List<SoccerFreeBoardVO> getList() {
	
		 log.info("getList..........");
		
		 return free_board.getList();
	 }

	@Override
	public List<SoccerFreeBoardVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return free_board.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return free_board.getTotalCount(cri);
	}
	
	@Override
	public SoccerFreeBoardVO get(Long board_idx) {

		log.info("get......" + board_idx);

		return free_board.read(board_idx);

	}
	
	@Override
	public boolean modify(SoccerFreeBoardVO soccer_free_board) {

		log.info("modify......" + soccer_free_board);
		
		// SQL 성공 시 <update tag에서 update 된 갯수를 리턴. 따라서 mapper.update(board)의 값은 1이됨. 
		// return true 가 됨.
		return free_board.update(soccer_free_board) == 1;
	}
	


	@Override
	public boolean remove(Long board_idx) {

		log.info("remove...." + board_idx);

		return free_board.delete(board_idx) == 1;
	}
	
	
	
}
