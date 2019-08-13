package com.pkfinal.login.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pkfinal.login.service.LoginService;
import com.pkfinal.main.members.vo.MembersVo;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	// 회원로그인 FORM
	@RequestMapping("/Members/Login")
	public ModelAndView login(@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login/mem_login");
		return mv;
	}
	
	// 회원로그아웃
	@RequestMapping("/Members/Logout")
	public ModelAndView logout(@RequestParam HashMap<String, Object> map, HttpSession session) {
		
		if(session.getAttribute("loginMember") != null) {
			session.removeAttribute("loginMember");
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	// 회원로그인액션
	@RequestMapping("/Members/LoginAction")
	public ModelAndView loginAction(@RequestParam HashMap<String, Object> map, HttpSession session) {
		
		if(session.getAttribute("loginMember") != null) {
			session.removeAttribute("loginMember");
		}
		
		ModelAndView mv = new ModelAndView();
		
		map.put("m_gbn", "GBN02");
		
		MembersVo member = loginService.loginAction(map);
		
		if(member == null) {
			mv.setViewName("redirect:/Members/Login");
		} else {
			session.setAttribute("loginMember", member);
			mv.setViewName("redirect:/");
		}
		
		return mv;
	}

	// 관리자로그인 FORM
	@RequestMapping("/Admin/Login")
	public ModelAndView loginAdmin(@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login/admin_login");
		return mv;
	}
	
	// 관리자 로그아웃
	@RequestMapping("/Admin/Logout")
	public ModelAndView logoutAdmin(@RequestParam HashMap<String, Object> map, HttpSession session) {
		
		if(session.getAttribute("loginMember") != null) {
			session.removeAttribute("loginMember");
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	//관리자로그인액션
	@RequestMapping("/Admin/LoginAction")
	public ModelAndView loginActionAdmin(@RequestParam HashMap<String, Object> map, HttpSession session) {
		
		if(session.getAttribute("loginMember") != null) {
			session.removeAttribute("loginMember");
		}
		
		ModelAndView mv = new ModelAndView();
		
		map.put("m_gbn", "GBN01");
		
		MembersVo member = loginService.loginAction(map);
		
		if(member == null) {
			mv.setViewName("redirect:/Admin/Login");
		} else {
			session.setAttribute("loginMember", member);
			mv.setViewName("admin_index");
		}
		
		return mv;
	}
	
}