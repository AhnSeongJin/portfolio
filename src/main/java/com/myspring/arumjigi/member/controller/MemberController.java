package com.myspring.arumjigi.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.arumjigi.member.vo.MemberVO;

public interface MemberController {
	// public ModelAndView listMembers(HttpServletRequest request,
	// HttpServletResponse response) throws Exception;
	public ModelAndView addMember(@ModelAttribute("info") MemberVO memberVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public ResponseEntity overlapped(@RequestParam("id") String id, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public ModelAndView login(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

//	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
//			HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView agree(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// public ModelAndView idCheck(HttpServletRequest request, HttpServletResponse
	// response) throws Exception;

	public ModelAndView searchForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//public ModelAndView searchPwd(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//public ModelAndView searchId(@RequestParam Map<String, String> searchMap,
            //HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity searchId(@RequestParam Map<String, String> searchMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity searchPwd(@RequestParam Map<String, String> searchMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}