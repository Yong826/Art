package org.coding.controller;

import org.coding.model.BoardVO;
import org.coding.service.mainpageService;
import org.coding.service.reviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@Autowired
	mainpageService mps;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Main (Model model, BoardVO board) { 
		model.addAttribute("mainlist", mps.mainlist(board));
		
		return "Main/mainhomepage";
	 }
}
