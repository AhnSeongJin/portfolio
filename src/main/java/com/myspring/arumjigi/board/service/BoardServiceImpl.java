package com.myspring.arumjigi.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.arumjigi.board.dao.BoardDAO;
import com.myspring.arumjigi.board.vo.ArticleVO;
import com.myspring.arumjigi.board.vo.ImageVO;


@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl  implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	//리스트 보기(페이징X)
//	public List<ArticleVO> listArticles() throws Exception{
//		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList();
//        return articlesList;
//	}
	
	// 페이징 처리
	public Map listArticles(Map<String, Integer> pagingMap) throws Exception{
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList(pagingMap);
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
        return articlesMap;
	}
	
//	//단일 이미지 추가하기
//	@Override
//	public int addNewArticle(Map articleMap) throws Exception{
//		return boardDAO.insertNewArticle(articleMap);
//	}
	
//	 //단일 파일 보이기
//	@Override
//	public ArticleVO viewArticle(int articleNO) throws Exception {
//		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
//		return articleVO;
//	}
	
	// 답글 쓰기 (단일 이미지)
	@Override
	public int addNewReply(Map articleMap) throws Exception{
		int articleNO = boardDAO.insertNewReply(articleMap);
		//articleMap.put("replyArticleNO", articleNO);
		if(articleMap.get("imageFileList") != null) { //이미지가 있을 경우 insertNewImage 메소드 실행
			boardDAO.insertNewImage(articleMap);
		}
		return articleNO;
	}
	
	//단일 파일 보이기
	@Override
	public Map viewReply(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		//List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		//articleMap.put("imageFileList", imageFileList);
		//System.out.println("서비스.viewArticle: "+articleVO);
		return articleMap;
	}
	
	 //다중 이미지 추가하기
	@Override
	public int addNewArticle(Map articleMap) throws Exception{
		int articleNO = boardDAO.insertNewArticle(articleMap);
		articleMap.put("articleNO", articleNO);
		if(articleMap.get("imageFileList") != null) { //이미지가 있을 경우 insertNewImage 메소드 실행
			boardDAO.insertNewImage(articleMap);
		}
		return articleNO;
	}
	
	//다중 파일 보이기
	@Override
	public Map viewArticle(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		articleMap.put("imageFileList", imageFileList);
		//System.out.println("서비스.viewArticle: "+articleVO);
		return articleMap;
	}
	
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);
		System.out.println("서비스.modArticle 이미지 전");
		if(articleMap.get("imageFileList") != null) { //이미지가 있을 경우 insertNewImage 메소드 실행
			boardDAO.deleteImage(articleMap);
			//boardDAO.updateImage(articleMap);
			boardDAO.insertNewImage(articleMap);
		}
	}
	
	@Override
	public void removeArticle(int articleNO) throws Exception {
		boardDAO.deleteArticle(articleNO);
	}
	
	@Override
	public void removeImage(Map articleMap) throws Exception {
		boardDAO.deleteImage(articleMap);
	}

	
}
