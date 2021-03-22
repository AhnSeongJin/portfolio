package com.myspring.arumjigi.board.service;

import java.util.List;
import java.util.Map;

import com.myspring.arumjigi.board.vo.ArticleVO;

public interface BoardService {
	//public List<ArticleVO> listArticles() throws Exception;
	public Map listArticles(Map<String, Integer> pagingMap) throws Exception; //페이징 처리
	
	public int addNewArticle(Map articleMap) throws Exception;
	//public ArticleVO viewArticle(int articleNO) throws Exception; //단일
	public Map viewArticle(int articleNO) throws Exception;	//다중
	public void modArticle(Map articleMap) throws Exception;
	public void removeArticle(int articleNO) throws Exception;
	
	public void removeImage(Map articleMap) throws Exception;
	public int addNewReply(Map articleMap) throws Exception;
	public Map viewReply(int articleNO) throws Exception;
}
