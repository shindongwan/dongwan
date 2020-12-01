package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.domain.SoccerFreeBoardVO;
import kr.ync.service.SoccerFreeBoardService;
import kr.ync.util.UploadUtils;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class SoccerFreeBoardController {
	
//	 @Value("${globalConfig.uploadPath}")
//	  private String uploadPath;
	
	
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
	
//	 @PreAuthorize("principal.username == #free_board.member_id")
//	   @PostMapping("/modify")
//	   public String modify(MultipartFile[] uploadFile, SoccerFreeBoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
//	      log.info("modify:" + board);
//	      
//	      int index = 0;
//	      for (MultipartFile multipartFile : uploadFile) {
//	         // 실제로 upload된 file이 있을때만 upload 시킨다.
//	         if (multipartFile.getSize() > 0) {
//	            switch (index) {
//	            case 0:
//	               board.setFile_1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
//	               break;
//	            case 1:
//	               board.setFile_2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
//	               break;
//	            default:
//	               board.setFile_3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
//	               break;
//	            }
//	         }
//	         index++;
//	      }
//
//	      if (service.modify(board)) {
//	         rttr.addFlashAttribute("result", "success");
//	      }
//
//	      return "redirect:/admin/list" + cri.getListLink();
//	   }
//
//	   @PreAuthorize("principal.username == #member_id")
//	   @PostMapping("/remove")
//	   public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr, String writer) {
//
//	      log.info("remove..." + bno);
//	      if (service.remove(bno)) {
//	         rttr.addFlashAttribute("result", "success");
//	      }
//
//	      return "redirect:/front/blogs" + cri.getListLink();
//	   }
//	

}
