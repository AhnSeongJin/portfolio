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
	
	//����Ʈ ����(����¡X)
//	public List<ArticleVO> listArticles() throws Exception{
//		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList();
//        return articlesList;
//	}
	
	// ����¡ ó��
	public Map listArticles(Map<String, Integer> pagingMap) throws Exception{
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList(pagingMap);
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
        return articlesMap;
	}
	
//	//���� �̹��� �߰��ϱ�
//	@Override
//	public int addNewArticle(Map articleMap) throws Exception{
//		return boardDAO.insertNewArticle(articleMap);
//	}
	
//	 //���� ���� ���̱�
//	@Override
//	public ArticleVO viewArticle(int articleNO) throws Exception {
//		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
//		return articleVO;
//	}
	
	// ��� ���� (���� �̹���)
	@Override
	public int addNewReply(Map articleMap) throws Exception{
		int articleNO = boardDAO.insertNewReply(articleMap);
		//articleMap.put("replyArticleNO", articleNO);
		if(articleMap.get("imageFileList") != null) { //�̹����� ���� ��� insertNewImage �޼ҵ� ����
			boardDAO.insertNewImage(articleMap);
		}
		return articleNO;
	}
	
	//���� ���� ���̱�
	@Override
	public Map viewReply(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		//List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		//articleMap.put("imageFileList", imageFileList);
		//System.out.println("����.viewArticle: "+articleVO);
		return articleMap;
	}
	
	 //���� �̹��� �߰��ϱ�
	@Override
	public int addNewArticle(Map articleMap) throws Exception{
		int articleNO = boardDAO.insertNewArticle(articleMap);
		articleMap.put("articleNO", articleNO);
		if(articleMap.get("imageFileList") != null) { //�̹����� ���� ��� insertNewImage �޼ҵ� ����
			boardDAO.insertNewImage(articleMap);
		}
		return articleNO;
	}
	
	//���� ���� ���̱�
	@Override
	public Map viewArticle(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		articleMap.put("imageFileList", imageFileList);
		//System.out.println("����.viewArticle: "+articleVO);
		return articleMap;
	}
	
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);
		System.out.println("����.modArticle �̹��� ��");
		if(articleMap.get("imageFileList") != null) { //�̹����� ���� ��� insertNewImage �޼ҵ� ����
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
