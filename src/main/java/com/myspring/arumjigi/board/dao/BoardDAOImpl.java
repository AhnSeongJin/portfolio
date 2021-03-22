package com.myspring.arumjigi.board.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.arumjigi.board.vo.ArticleVO;
import com.myspring.arumjigi.board.vo.ImageVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	//����Ʈ ����(����¡X)
//	@Override
//	public List selectAllArticlesList() throws DataAccessException {
//		List<ArticleVO> articlesList = sqlSession.selectList("mapper.board.selectAllArticlesList");
////		for(ArticleVO vo : articlesList) {
////			System.out.println(vo);
////		}
//		return articlesList;
//	}
	
	// ����¡ ó��
	@Override
	public List<ArticleVO> selectAllArticlesList(Map<String, Integer> pagingMap) throws DataAccessException {
		//System.out.println("BoardDAO.pagingMap: "+pagingMap);
		List<ArticleVO> articlesList = sqlSession.selectList("mapper.board.selectAllArticlesList", pagingMap);
		//System.out.println("BoardDAO.articlesList: "+articlesList);
		return articlesList;
	}

	@Override
	public int selectTotArticles() throws DataAccessException {
		int totArticles = sqlSession.selectOne("mapper.board.selectTotArticles");
		//System.out.println("BoardDAO.selectTotArticles: "+totArticles);
		return totArticles;
	}

	// �� �� �߰�
	// �� ������ �Խ��� ���̺� �߰��� �Ŀ� �� ��ȣ�� ����
	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException {
		int articleNO = selectNewArticleNO(); //���ۿ� �߰��� �۹�ȣ �˾Ƴ���
		articleMap.put("articleNO", articleNO);
		sqlSession.insert("mapper.board.insertNewArticle", articleMap);
		return articleNO;
	}

	// ���� ���� ���ε�
	@Override
	public void insertNewImage(Map articleMap) throws DataAccessException {
		List<ImageVO> imageFileList = (ArrayList) articleMap.get("imageFileList");
		int articleNO = (Integer) articleMap.get("articleNO"); //articleMap �۹�ȣ�� ������
		int imageFileNO = selectNewImageFileNO();
		// imageVO ��ü�� ���ʴ�� ������ �̹��� ��ȣ�� �۹�ȣ �Ӽ��� ����
		for (ImageVO imageVO : imageFileList) {
			imageVO.setImageFileNO(++imageFileNO);
			imageVO.setArticleNO(articleNO);
		}
		sqlSession.insert("mapper.board.insertNewImage", imageFileList);
	}

	@Override
	public ArticleVO selectArticle(int articleNO) throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectArticle", articleNO);
	}

	@Override
	public void updateArticle(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.board.updateArticle", articleMap);
	}
	
	@Override
	public void updateImage(Map articleMap) throws DataAccessException {
		System.out.println("DAO.upateImage.�޼ҵ� ������");
		System.out.println(articleMap);
		sqlSession.update("mapper.board.updateImage", articleMap);
		System.out.println("DAO.upateImage.�޼ҵ� ����Ϸ�");
	}
	
	@Override
	public void deleteImage(Map articleMap) throws DataAccessException {
		System.out.println("DAO.deleteImage.�޼ҵ� ������");
		sqlSession.delete("mapper.board.deleteImage", articleMap);
		System.out.println("DAO.deleteImage.�޼ҵ� ����Ϸ�");
	}

	@Override
	public void deleteArticle(int articleNO) throws DataAccessException {
		sqlSession.delete("mapper.board.deleteArticle", articleNO);

	}

	@Override
	public List selectImageFileList(int articleNO) throws DataAccessException {
		List<ImageVO> imageFileList = null;
		imageFileList = sqlSession.selectList("mapper.board.selectImageFileList", articleNO);
		return imageFileList;
	}

	private int selectNewArticleNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewArticleNO");
	}

	private int selectNewImageFileNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewImageFileNO");
	}
	
	@Override
	public void deleteImage(int articleNO, String imageFileName) throws DataAccessException {
		System.out.println("DAO.deleteImage.�޼ҵ� ������");
		//sqlSession.delete("mapper.board.deleteImage", articleNO, imageFileName);
		System.out.println("DAO.deleteImage.�޼ҵ� ����Ϸ�");
	}
	
	@Override
	public int insertNewReply(Map articleMap) throws DataAccessException {
		int articleNO = selectNewArticleNO(); //���ۿ� �߰��� �۹�ȣ �˾Ƴ���
		articleMap.put("replyArticleNO", articleNO); //����� �� �۹�ȣ, form���� �Ѿ�� articleNO�� parentNO�� ���
		System.out.println("DB�� articleMap: "+articleMap);
		sqlSession.insert("mapper.board.insertNewReply", articleMap);
		return articleNO;
	}

}
