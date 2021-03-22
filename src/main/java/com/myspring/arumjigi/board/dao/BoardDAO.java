package com.myspring.arumjigi.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.arumjigi.board.vo.ArticleVO;


public interface BoardDAO {
	//public List selectAllArticlesList() throws DataAccessException;
	public List<ArticleVO> selectAllArticlesList(Map<String, Integer> pagingMap); // ����¡ ó��
	public int selectTotArticles(); //�ۼ� ī��Ʈ
	
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	public void insertNewImage(Map articleMap) throws DataAccessException;
	public ArticleVO selectArticle(int articleNO) throws DataAccessException;
	public void updateArticle(Map articleMap) throws DataAccessException;
	public void deleteArticle(int articleNO) throws DataAccessException;
	
	public List selectImageFileList(int articleNO) throws DataAccessException; //����
	
	public void updateImage(Map articleMap) throws DataAccessException;
	public void deleteImage(Map articleMap) throws DataAccessException;
	public void deleteImage(int articleNO, String imageFileName) throws DataAccessException;
	public int insertNewReply(Map articleMap) throws DataAccessException; //�亯(�����̹���)
	
}
