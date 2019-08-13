package com.pkfinal.main.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pkfinal.main.members.vo.MembersVo;

@Controller
public class MainController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/Map")
	public String map() {
		return "map";
	}
	
	@RequestMapping("/test")
	public ModelAndView test(@RequestParam HashMap<String, Object> map, HttpSession session) {

		ModelAndView mv = new ModelAndView();
		
		MembersVo member = (MembersVo) session.getAttribute("loginMember"); 
		
		mv.addObject("member", member);
		mv.setViewName("test");
		
		return mv;
	}
	
}
