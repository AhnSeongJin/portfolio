package com.myspring.arumjigi.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.arumjigi.member.service.MemberService;
import com.myspring.arumjigi.member.vo.MemberVO;



@Controller("memberController")
//@EnableAspectJAutoProxy
@RequestMapping(value="/member")
public class MemberControllerImpl   implements MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	
//	@Override
//	@RequestMapping(value="/member/listMembers.do" ,method = RequestMethod.GET)
//	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = getViewName(request);
////		String viewName = (String)request.getAttribute("viewName");
//		//System.out.println("viewName: " +viewName);
//		logger.info("viewName: "+ viewName);
//		logger.debug("viewName: "+ viewName);
//		List membersList = memberService.listMembers();
//		ModelAndView mav = new ModelAndView(viewName);
//		mav.addObject("membersList", membersList);
//		return mav;
//	}

	@Override
	@RequestMapping(value="/addMember.do" ,method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		int result = 0;
		System.out.println(member.toString()); //????????? ??? ??????
		result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/loginForm.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/overlapped.do" ,method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception{
		ResponseEntity resEntity = null;
		String result = memberService.overlapped(id);
		resEntity = new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
	
	@Override
	@RequestMapping(value="/removeMember.do" ,method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, 
			           HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/agree.do" )
	public ModelAndView agree(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("MemberController: "+viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = { "/loginForm.do", "/joinForm.do" }, method =  RequestMethod.GET)
//	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
	public ModelAndView form(@RequestParam(value= "action", required=false) String action, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		//login ??????????????? ???????????? action??? ???????????? ??????
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}	
	
	@Override
	@RequestMapping(value="/login.do" ,method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		 memberVO = memberService.login(loginMap);
		if(memberVO!= null && memberVO.getId()!=null){
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("member",memberVO);
			
			//action?????? ?????? ????????? ?????? ????????? ????????? action??? ????????? ????????? ??????
			String action=(String)session.getAttribute("action");
			System.out.println("action???: "+action);
			if(action!=null){
				mav.setViewName("redirect:"+action);
			}else{
				mav.setViewName("redirect:/index.do");	
			}
							
		}else{
			String message="????????????  ??????????????? ????????????. ?????? ?????????????????????";
			mav.addObject("message", message);
			mav.setViewName("/member/loginForm");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/searchId.do", method =  RequestMethod.GET)
	public ResponseEntity searchId(@RequestParam Map<String, String> searchMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception{
		//System.out.println("????????? ???: "+searchMap);
		ResponseEntity resEntity = null;
		memberVO = memberService.searchId(searchMap);
		String result = memberVO.getId();
		//System.out.println("?????????: "+result);
		resEntity = new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value = "/searchPwd.do", method =  RequestMethod.GET)
	public ResponseEntity searchPwd(@RequestParam Map<String, String> searchMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception{
		//System.out.println("searchPwd.do: "+searchMap);
		ResponseEntity resEntity = null;
		memberVO = memberService.searchPwd(searchMap);
		String result = memberVO.getPwd();
		//System.out.println("?????????: "+result);
		resEntity = new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
//	@Override
//	@RequestMapping(value = "/searchId.do", method =  RequestMethod.GET)
//	public ModelAndView searchId(@RequestParam Map<String, String> searchMap,
//            HttpServletRequest request, HttpServletResponse response) throws Exception{
//		System.out.println(searchMap);
//		ModelAndView mav = new ModelAndView();
//		memberVO = memberService.searchId(searchMap);
//		if(memberVO!= null && memberVO.getId()!=null) {
//			//String message = memberVO.getName();
//			//mav.addObject("message", message);
//			//mav.addObject("member", memberVO.getId());
//			String info = memberVO.getId();
//			mav.addObject("info", info);
//			System.out.println("if???");
//		}else {
//			String message = "??? ??????";
//			mav.addObject("message", message);
//			System.out.println("else???");
//		}
//		System.out.println(memberVO.getId());
//		
//		return mav;
//	}
	
	@Override
	@RequestMapping(value = "/logout.do", method =  RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/index.do");
		return mav;
	}	
	
	@Override
	@RequestMapping(value = "/search*Form.do" )
	public ModelAndView searchForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("MemberController: "+viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	
	
//	@Override
//	@RequestMapping(value = "/searchPwd.do" )
//	public ModelAndView searchPwd(@RequestParam Map<String, String> searchPwd,
//            HttpServletRequest request, HttpServletResponse response) throws Exception{
//		System.out.println(searchPwd);
//		
//		return null;
//	}
	
	
	
//	@Override
//	@RequestMapping(value = "/searchPwd.do" )
//	public ModelAndView searchPwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = getViewName(request);
//		System.out.println("MemberController: "+viewName);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
	
//	
//	@Override
//	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
//	public ModelAndView login(@ModelAttribute("member") MemberVO member,
//				              RedirectAttributes rAttr,
//		                       HttpServletRequest request, HttpServletResponse response) throws Exception {
//	ModelAndView mav = new ModelAndView();
//	memberVO = memberService.login(member);
//	System.out.println("????????? ????????? ???????????? "+memberVO);
//	if(memberVO != null) {
//		    HttpSession session = request.getSession();
//		    session.setAttribute("member", memberVO);
//		    session.setAttribute("isLogOn", true);
//		    mav.setViewName("redirect:/index.do");
//	}else {
//		    rAttr.addAttribute("result","loginFailed");
//		    System.out.println(rAttr);
//		    mav.setViewName("redirect:/member/loginForm.do");
//	}
//	return mav;
//	}
//	
	
//	@Override
//	@RequestMapping(value="/member/idCheck.com", method = RequestMethod.GET)
//	public ModelAndView idCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		String viewName = getViewName(request);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}


//	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
//	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
//						       HttpServletRequest request, 
//						       HttpServletResponse response) throws Exception {
//		//String viewName = getViewName(request);
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("result",result);
//		mav.setViewName(viewName);
//		return mav;
//	}
	
	//??????????????????
//	@Override
//	@RequestMapping (value="/artshop.com")
//	public ModelAndView artshop(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		String viewName = getViewName(request);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
	

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			//getViewName()?????? ??????????????? ????????? fileName.lastIndexOf("/",1)?????? ??????????????????
			//JSP?????? ?????????????????? ???????????? ??????????????? ???????????????????????? ?????? ????????? ???????????????????????? ????????????????????????.
			//ex))	member/listmembers.do?????? ?????????????????? ????????? member/listMember?????? ???????????? ????????????????????? ??????????????????
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}


}
