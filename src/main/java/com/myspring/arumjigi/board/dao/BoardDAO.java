package com.myspring.arumjigi.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.arumjigi.board.vo.ArticleVO;


public interface BoardDAO {
	//public List selectAllArticlesList() throws DataAccessException;
	public List<ArticleVO> selectAllArticlesList(Map<String, Integer> pagingMap); // 페이징 처리
	public int selectTotArticles(); //글수 카운트
	
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	public void insertNewImage(Map articleMap) throws DataAccessException;
	public ArticleVO selectArticle(int articleNO) throws DataAccessException;
	public void updateArticle(Map articleMap) throws DataAccessException;
	public void deleteArticle(int articleNO) throws DataAccessException;
	
	public List selectImageFileList(int articleNO) throws DataAccessException; //다중
	
	public void updateImage(Map articleMap) throws DataAccessException;
	public void deleteImage(Map articleMap) throws DataAccessException;
	public void deleteImage(int articleNO, String imageFileName) throws DataAccessException;
	public int insertNewReply(Map articleMap) throws DataAccessException; //답변(단일이미지)
	
}
