package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;

import kr.ync.service.SoccerFreeBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class SoccerFreeBoardController {
	
	@Autowired
	private SoccerFreeBoardService service;
	
	@GetMapping("/blogs")
	public void blogs(Criteria cri, Model model) {
		
		log.info("f_board : " + cri);
		
		int total = service.getTotal(cri);
		log.info("total : " + total);
		model.addAttribute("f_board", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
//	
//	@PostMapping("/register")
//	public String register(SoccerFreeBoardVO soccer_free_board, RedirectAttributes rttr) {
//		
//		log.info("register: " + soccer_free_board);
//		
//		service.register(soccer_free_board);
//		
//		rttr.addFlashAttribute("result" , soccer_free_board.getBoard_idx());
//		
//		return "redirect:/front/index";
//	}
	
	@GetMapping({ "/get", "/modify" })
	   public void get(@RequestParam("board_idx") Long board_idx, @ModelAttribute("cri") Criteria cri, Model model) {

	      log.info("/get or modify");
	      model.addAttribute("f_board", service.get(board_idx));
	   }
	
	
	

}
