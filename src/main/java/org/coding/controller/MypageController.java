package org.coding.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.coding.model.MemberVo;
import org.coding.model.MypageVO;
import org.coding.service.MypageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MypageController {
		
	@Autowired
	MypageService ms;
	// 마이페이지 
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String Mypage (MypageVO mypage, HttpSession session,Model model) { 
		MemberVo login= (MemberVo)session.getAttribute("login");
		//mypage.setId(id);
		
		System.out.println(login.getId());
		model.addAttribute("mypage",ms.mypage(login.getId()));	
				
		return "mypage/mypage";
	}
	// 마이페이지 개인정보 변경 GET
	@RequestMapping(value ="/mypage2", method = RequestMethod.GET)
		public String Mypage2 () {
		return "mypage/mypage2";
	
	}

	
	
	
	
	// 마이페이지 개인정보 변경 POST
	@RequestMapping(value ="/mypage2", method = RequestMethod.POST)
		public String UploadAjaxAction(MemberVo member, MultipartFile[] uploadFile) {
		System.out.println("controller="+member);
		ms.mywrite(member);
		//폴더 경로
//			String uploadFolder="D:\\01-STUDY\\upload";
//		//for(변수명:배열명)
//		for(MultipartFile multipartFile : uploadFile) {
//			
//			System.out.println(multipartFile.getOriginalFilename());
//			System.out.println(multipartFile.getSize());
//			System.out.println("원인="+member);
//			//UUID
//			UUID uuid = UUID.randomUUID();
//			System.out.println("UUID="+uuid.toString());
//			
//			// 파일 저장
//			File saveFile = new File(uploadFolder,multipartFile.getOriginalFilename());
//			
//			try {
//				
//				multipartFile.transferTo(saveFile);
//			} catch(Exception e) {
//				
//				System.out.println(e.getMessage());
//				
//			} // catch
//			
//		} // for
				
		return "redirect:/mypage";
	}
	
//	@RequestMapping(value="/uploadForm", method= RequestMethod.GET)
//	public void uploadForm() {
//	}
//	
//	@RequestMapping(value="/uploadFormAction", method=RequestMethod.POST)
//	public void uploadFormPost(MultipartFile[] uploadFile) {
//		
//		
//		// 폴더 경로
//		String uploadFolder="D:\\01-STUDY\\upload";
//		
//		for(MultipartFile multipartFile : uploadFile) {
//		
//		System.out.println(multipartFile.getOriginalFilename());
//		System.out.println(multipartFile.getSize());
//		
//		// 파일 저장
//		
//		File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
//		
//		try { 
//			multipartFile.transferTo(saveFile);
//			
//		} catch(Exception e) {
//			
//			System.out.println(e.getMessage());
//		} // catach
//		
//	} // for
//	
//} // uploadFormAction
	
	
	@RequestMapping(value="/uploadAjaxAction", method=RequestMethod.POST)
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		
		
		// 폴더 경로
		String uploadFolder="D:\\01-STUDY\\upload";
		
		for(MultipartFile multipartFile : uploadFile) {
		
		System.out.println(multipartFile.getOriginalFilename());
		System.out.println(multipartFile.getSize());
		
		// 파일 저장
		
		File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
		
		try { 
			multipartFile.transferTo(saveFile);
			
		} catch(Exception e) {
			
			System.out.println(e.getMessage());
		} // catach
		
	}
}
}