package kr.ync.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.BoardVO;
import kr.ync.domain.SoccerMemberVO;
import kr.ync.service.BoardService;
import kr.ync.service.SoccerMemberService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class SoccerMemberController {

	@Autowired
	private SoccerMemberService service;



	@GetMapping("/sign_up")
	public void sign_up() {
	}

	@GetMapping("/login")
	public void login() {
	}

	@PostMapping("/sign_up")
	public String register(SoccerMemberVO member, Model model) {

		log.info("sign_up: " + member);

		service.register(member);

		return "redirect:/front/login";
	}

}
