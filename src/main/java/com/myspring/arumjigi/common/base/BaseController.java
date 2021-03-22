package com.myspring.arumjigi.common.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController  {
	
	@RequestMapping(value="/*.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public  ModelAndView viewForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("BaseController: "+viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
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
			//getViewName()�쓣 �샇異쒗븷 寃쎌슦 fileName.lastIndexOf("/",1)�쓣 �궗�슜�빐
			//JSP媛� 吏��젙�맂 �뤃�뜑 �씠由꾩뿉 �빐�떦�븯�뒗 泥� 踰덉㎏ �슂泥�遺��꽣 媛��졇�삩�떎.
			//ex))	member/listmembers.do濡� �슂泥��븷 寃쎌슦 member/listMember瑜� �뙆�씪 �씠由꾩쑝濡� 媛��졇�샂
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}
		
}
