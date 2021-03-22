package com.myspring.arumjigi.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.arumjigi.board.service.BoardService;
import com.myspring.arumjigi.board.vo.ArticleVO;
import com.myspring.arumjigi.board.vo.ImageVO;
import com.myspring.arumjigi.member.vo.MemberVO;


@Controller("boardController")
@RequestMapping(value="/board")
public class BoardControllerImpl  implements BoardController{
	private static final String ARTICLE_IMAGE_REPO = "C:\\arumjigi\\board\\article_image";
	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;
	
	@Override
	@RequestMapping(value="/qna.do")
	public ModelAndView qna(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/news.do")
	public ModelAndView news(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	//리스트 보기(페이징X)
//	@Override
//	@RequestMapping(value= "/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		List articlesList = boardService.listArticles();
//		ModelAndView mav = new ModelAndView(viewName);
//		mav.addObject("articlesList", articlesList);
//		return mav;
//	}
	
	// 페이징 처리
	@Override
	@RequestMapping(value= "/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		
		String _section=request.getParameter("section");
		String _pageNum=request.getParameter("pageNum");
		int section = Integer.parseInt(((_section==null)? "1":_section));
		int pageNum = Integer.parseInt(((_pageNum==null)? "1":_pageNum));
		
		Map<String, Integer> pagingMap = new HashMap<String, Integer>();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);
		//System.out.println("BoardContoller.pagingMap: "+pagingMap);
		Map articlesMap=boardService.listArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);
		
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}
	
//	// 한 개 이미지 글쓰기
//	@Override
//	@RequestMapping(value = "/addNewArticle.do", method = RequestMethod.POST)
//	@ResponseBody
//	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
//			throws Exception {
//		multipartRequest.setCharacterEncoding("utf-8");
//		Map<String, Object> articleMap = new HashMap<String, Object>();
//		Enumeration enu = multipartRequest.getParameterNames();
//		while (enu.hasMoreElements()) {
//			String name = (String) enu.nextElement();
//			String value = multipartRequest.getParameter(name);
//			articleMap.put(name, value);
//		}
//
//		String imageFileName = upload(multipartRequest);
//		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String id = memberVO.getId();
//		articleMap.put("parentNO", 0);
//		articleMap.put("id", id);
//		articleMap.put("imageFileName", imageFileName);
//
//		String message;
//		ResponseEntity resEnt = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
//		try {
//			int articleNO = boardService.addNewArticle(articleMap);
//			if (imageFileName != null && imageFileName.length() != 0) {
//				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
//				FileUtils.moveFileToDirectory(srcFile, destDir, true);
//			}
//
//			message = "<script>";
//			message += " alert('새글을 추가했습니다.');";
//			message += " location.href='" + multipartRequest.getContextPath() + "/board/listArticles.do'; ";
//			message += " </script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//		} catch (Exception e) {
//			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//			srcFile.delete();
//
//			message = " <script>";
//			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
//			message += " location.href='" + multipartRequest.getContextPath() + "/board/articleForm.do'; ";
//			message += " </script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//			e.printStackTrace();
//		}
//		return resEnt;
//	}

	// 다중 이미지 글 추가하기
	@Override
	@RequestMapping(value = "/addNewArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;

		Map articleMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}

		// 로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 Map에 저장합니다.
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String id = memberVO.getId();
		articleMap.put("id", id);

		List<String> fileList = multiUpload(multipartRequest);
		List<ImageVO> imageFileList = new ArrayList<ImageVO>();
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
		} System.out.println("articleMap: "+articleMap);
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int articleNO = boardService.addNewArticle(articleMap);
			if (imageFileList != null && imageFileList.size() != 0) {
				System.out.println("boardController 이미지 있음");
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
					// destDir.mkdirs();
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}

			message = "<script>";
			message += " alert('새글을 추가했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/listArticles.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}

			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/articleForm.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

//	
//	//한개의 이미지 보여주기
//	@RequestMapping(value="/viewArticle.do" ,method = RequestMethod.GET)
//	public ModelAndView viewArticle(@RequestParam("articleNO") int articleNO,
//                                    HttpServletRequest request, HttpServletResponse response) throws Exception{
//		String viewName = (String)request.getAttribute("viewName");
//		articleVO=boardService.viewArticle(articleNO);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		mav.addObject("article", articleVO);
//		return mav;
//	}

	// 다중 이미지 보여주기
	@RequestMapping(value = "/viewArticle.do", method = RequestMethod.GET)
	public ModelAndView viewArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		//System.out.println("viewArticle.do: "+articleNO);
		Map articleMap = boardService.viewArticle(articleNO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}

//	// 한 개 이미지 수정 기능
//	@RequestMapping(value = "/modArticle.do", method = RequestMethod.POST)
//	@ResponseBody
//	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
//			throws Exception {
//		multipartRequest.setCharacterEncoding("utf-8");
//		Map<String, Object> articleMap = new HashMap<String, Object>();
//		Enumeration enu = multipartRequest.getParameterNames();
//		while (enu.hasMoreElements()) {
//			String name = (String) enu.nextElement();
//			String value = multipartRequest.getParameter(name);
//			articleMap.put(name, value);
//		}
//
//		String imageFileName = upload(multipartRequest);
//		articleMap.put("imageFileName", imageFileName);
//
//		String articleNO = (String) articleMap.get("articleNO");
//		String message;
//		ResponseEntity resEnt = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
//		try {
//			boardService.modArticle(articleMap);
//			if (imageFileName != null && imageFileName.length() != 0) {
//				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
//				FileUtils.moveFileToDirectory(srcFile, destDir, true);
//
//				String originalFileName = (String) articleMap.get("originalFileName");
//				File oldFile = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO + "\\" + originalFileName);
//				oldFile.delete();
//			}
//			message = "<script>";
//			message += " alert('글을 수정했습니다.');";
//			message += " location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
//					+ articleNO + "';";
//			message += " </script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//		} catch (Exception e) {
//			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//			srcFile.delete();
//			message = "<script>";
//			message += " alert('오류가 발생했습니다.다시 수정해주세요');";
//			message += " location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
//					+ articleNO + "';";
//			message += " </script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//		}
//		return resEnt;
//	}
	
	// 여러 이미지 수정 기능
	@RequestMapping(value = "/modArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		Map<String, Object> articleMap = new HashMap<String, Object>();
		//파라미터들 가져와서 map에 세팅
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}		
		
		//이미지 파일 리스트로 세팅
		List<String> fileList = multiUpload(multipartRequest);
		List<ImageVO> imageFileList = new ArrayList<ImageVO>();
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
		} System.out.println("컨트롤러.modArticle.articleMap: "+articleMap);
		
		String articleNO = (String) articleMap.get("articleNO");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		String originalFileName = (String) articleMap.get("originalFileName");
		try {
			boardService.modArticle(articleMap);
			// 새거
			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
					// destDir.mkdirs();
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					
					//String originalFileName = (String) articleMap.get("originalFileName");
					File oldFile = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO + "\\" + originalFileName);
					oldFile.delete();
				}
			}
			message = "<script>";
			message += " alert('글을 수정했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
					+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {
			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
			srcFile.delete();
			message = "<script>";
			message += " alert('오류가 발생했습니다.다시 수정해주세요');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
					+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		return resEnt;
	}

	@Override
	@RequestMapping(value = "/removeArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity removeArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			boardService.removeArticle(articleNO);
			File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/board/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/board/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	
	@Override
	@RequestMapping(value = "/removeImage.do", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity removeImage(@RequestParam("articleNO") int articleNO,@RequestParam("imageFileName") String imageFileName, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		Map articleMap = new HashMap();
		articleMap.put("articleNO", articleNO);
		articleMap.put("imageFileName", imageFileName);
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			boardService.removeImage(articleMap);
			File fileName = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO + imageFileName);
			fileName.delete();

			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/board/viewArticle.do?articleNO="+ articleNO + "'";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/board/viewArticle.do?articleNO="+ articleNO + "'";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	@RequestMapping(value = "/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/replyForm.do", method = RequestMethod.POST)
	private ModelAndView replyForm(@RequestParam("articleNO") int articleNO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.addObject("articleNO", articleNO);
		System.out.println("replyForm,articleNO: "+articleNO);
		mav.setViewName(viewName);
		return mav;
	}
	
	// 단일 이미지 보여주기(답변)
	@RequestMapping(value = "/viewReply.do", method = RequestMethod.GET)
	public ModelAndView viewReply(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = boardService.viewReply(articleNO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}	
	
	// 답변
	@Override
	@RequestMapping(value = "/addNewReply.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewReply(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		Map<String, Object> articleMap = new HashMap<String, Object>();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}

		String imageFileName = upload(multipartRequest);
		// form에서 id값 받음
//		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String id = memberVO.getId();
//		articleMap.put("parentNO", 0);
//		articleMap.put("id", id);
		articleMap.put("imageFileName", imageFileName);
		System.out.println("컨트롤러 addNewReply.articleMap값: "+articleMap);

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int articleNO = boardService.addNewReply(articleMap);
			if (imageFileName != null && imageFileName.length() != 0) {
				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
				FileUtils.moveFileToDirectory(srcFile, destDir, true);
			}

			message = "<script>";
			message += " alert('새 답글을 추가했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/listArticles.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {
			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
			srcFile.delete();

			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + multipartRequest.getContextPath() + "/board/articleForm.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	

	// 한개 이미지 업로드하기
	private String upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		String imageFileName= null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasNext()){
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			imageFileName=mFile.getOriginalFilename();
			File file = new File(ARTICLE_IMAGE_REPO +"\\"+ fileName);
			if(mFile.getSize()!=0){ //File Null Check
				if(! file.exists()){ //경로상에 파일이 존재하지 않을 경우
					if(file.getParentFile().mkdirs()){ //경로에 해당하는 디렉토리들을 생성
							file.createNewFile(); //이후 파일 생성
					}
				}
				mFile.transferTo(new File(ARTICLE_IMAGE_REPO +"\\"+"temp"+ "\\"+imageFileName)); //임시로 저장된 multipartFile을 실제 파일로 전송
			}
		}
		return imageFileName;
	}
	

	// 다중 이미지 업로드하기
	private List<String> multiUpload(MultipartHttpServletRequest multipartRequest) throws Exception {
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(ARTICLE_IMAGE_REPO + "\\" + fileName);
			if (mFile.getSize() != 0) { // File Null Check
				if (!file.exists()) { // 경로상에 파일이 존재하지 않을 경우
					if (file.getParentFile().mkdirs()) { // 경로에 해당하는 디렉토리들을 생성
						file.createNewFile(); // 이후 파일 생성
					}
				}
				mFile.transferTo(new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + originalFileName)); // 임시로 저장된
																											// multipartFile을
																											// 실제 파일로 전송
			}
		}
		return fileList;
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
