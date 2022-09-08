package org.coding.controller;

import javax.servlet.http.HttpSession;

import org.coding.model.MemberVo;
import org.coding.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	
	@Autowired
	MemberService MS;
    
		 @RequestMapping(value = "/login", method = RequestMethod.GET)
		 public String login() {  
			 return "Member/login";
		 }
		 
		 @RequestMapping(value = "/join", method = RequestMethod.GET)
		 public String signin() {
			 return "Member/signin";
		 }
		 
		 @RequestMapping (value = "/", method = RequestMethod.POST)
		public String memberinfoPost (MemberVo member) {
			 MS.memberjoin(member);
			 return "Main/mainhomepage";
		}
		
		@PostMapping("/loginForm")
		public String postLogin(MemberVo member, HttpSession session,RedirectAttributes rttr) {
			boolean result = MS.login(member,session);
			System.out.println("result="+result);
			if(result){
			System.out.println("로그인성공");
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/";
		}else{
			System.out.println("로그인 실패");
			rttr.addFlashAttribute("msg","fail");
			return "redirect:login";
		}
		}		
			
		@GetMapping("/logout")
		public String getLogout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
		}
		
}
