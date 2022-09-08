package org.coding.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.coding.model.BoardVO;
import org.coding.service.reviewService;
import org.coding.model.PageVO;
import org.coding.model.CriteriaVO;
import org.coding.service.reviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class reviewController {
	// 게시판 화면
	@Autowired
	reviewService bs;
	
	// 게시판 목록 리스트
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String list(Model model, CriteriaVO cri) {
		model.addAttribute("list", bs.list(cri));
		
		// list.jsp 실행 할 때 PageVO에 저장되어 있는 데이터를 가져와라.
		//                           생성자 호출(매개변수가 2개인 생성자)
		// board테이블(게시판테이블)에 전체 건수(select해서)를 아래에 190대신에 대입
		int total=bs.total(cri);
		//model.addAttribute("paging", new PageVO(cri, 190));
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "board/list";
	}
	
	// 게시판 상세 페이지
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	// public String detail(int bno){
	public String detail (BoardVO board, Model model) {
		System.out.println(board);
		// bs.detail(bno);
		model.addAttribute("detail", bs.detail(board));
		return "board/detail";
	}

	// 게시판 수정
	/*
	@RequestMapping(value = "/board/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify (BoardVO board, RedirectAttributes rttr) {
		bs.modify(board);
		rttr.addAttribute("bno", board.getBno());
		// 수정하고 난 뒤 확인을 위해 상세페이지로 화면이동
		return "redirect:/detail";
	}*/
	
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public String modifyget (BoardVO board, Model model) {
		System.out.println(board);
		model.addAttribute("detail", bs.detail(board));
		return "board/modify";
	}
	
	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public String modifypost (BoardVO board, RedirectAttributes rttr) {
		bs.modify(board);
		rttr.addFlashAttribute("result", "modify success");
		return "redirect:/board/list";
	}
	
	// 게시판 삭제
	@RequestMapping(value = "/board/remove", method = {RequestMethod.GET, RequestMethod.POST})
	public String remove (BoardVO board) {
		bs.remove(board);
		return "redirect:/board/list";
	}
	
	
	// 게시판 글쓰기 페이지(화면) 
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		return "board/write";
	}

	// 게시판 글쓰기 페이지(insert가 이루어짐)
	// 모델 사용해 데이터 수집하기 -> 메모리 효율적 관리 가능
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writePost (BoardVO board) {
		// 비즈니스 영역 연결한 후 BoardService
		bs.write(board);
		return "redirect:/board/list";
	}
	
}
