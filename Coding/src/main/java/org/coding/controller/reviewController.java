package org.coding.controller;

import java.util.List;

import org.coding.model.BoardVO;
import org.coding.service.reviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@EnableAutoConfiguration
public class reviewController {
	// 게시판 화면
	@Autowired
	private reviewService reviewservice;
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView relist() throws Exception{
		ModelAndView mav = new ModelAndView("/board/list");
		List<BoardVO> reviewlist = reviewservice.reviewlist();
		mav.addObject("relist",reviewlist);
		
		return mav;
	}
	
	// 게시판 글쓰기 페이지(화면) 
	@RequestMapping(value = "/board/mainwrite", method = RequestMethod.GET)
	public String mainwrite() {
		return "board/mainwrite";
	}
}
