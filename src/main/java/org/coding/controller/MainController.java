package org.coding.controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;
=======
import org.coding.model.BoardVO;
import org.coding.service.mainpageService;
import org.coding.service.reviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
<<<<<<< HEAD
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Main () { 
	return "Main/mainhomepage";
=======
	@Autowired
	mainpageService mps;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Main (Model model, BoardVO board) { 
		model.addAttribute("mainlist", mps.mainlist(board));
		
		return "Main/mainhomepage";
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
	 }
}
