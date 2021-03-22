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

	//리스트 보기(페이징X)
//	@Override
//	public List selectAllArticlesList() throws DataAccessException {
//		List<ArticleVO> articlesList = sqlSession.selectList("mapper.board.selectAllArticlesList");
////		for(ArticleVO vo : articlesList) {
////			System.out.println(vo);
////		}
//		return articlesList;
//	}
	
	// 페이징 처리
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

	// 새 글 추가
	// 글 정보를 게시판 테이블에 추가한 후에 글 번호를 리턴
	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException {
		int articleNO = selectNewArticleNO(); //새글에 추가할 글번호 알아내기
		articleMap.put("articleNO", articleNO);
		sqlSession.insert("mapper.board.insertNewArticle", articleMap);
		return articleNO;
	}

	// 다중 파일 업로드
	@Override
	public void insertNewImage(Map articleMap) throws DataAccessException {
		List<ImageVO> imageFileList = (ArrayList) articleMap.get("imageFileList");
		int articleNO = (Integer) articleMap.get("articleNO"); //articleMap 글번호를 가져옴
		int imageFileNO = selectNewImageFileNO();
		// imageVO 객체를 차례대로 가져와 이미지 번호와 글번호 속성을 설정
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
		System.out.println("DAO.upateImage.메소드 실행전");
		System.out.println(articleMap);
		sqlSession.update("mapper.board.updateImage", articleMap);
		System.out.println("DAO.upateImage.메소드 실행완료");
	}
	
	@Override
	public void deleteImage(Map articleMap) throws DataAccessException {
		System.out.println("DAO.deleteImage.메소드 실행전");
		sqlSession.delete("mapper.board.deleteImage", articleMap);
		System.out.println("DAO.deleteImage.메소드 실행완료");
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
		System.out.println("DAO.deleteImage.메소드 실행전");
		//sqlSession.delete("mapper.board.deleteImage", articleNO, imageFileName);
		System.out.println("DAO.deleteImage.메소드 실행완료");
	}
	
	@Override
	public int insertNewReply(Map articleMap) throws DataAccessException {
		int articleNO = selectNewArticleNO(); //새글에 추가할 글번호 알아내기
		articleMap.put("replyArticleNO", articleNO); //답글의 새 글번호, form에서 넘어온 articleNO는 parentNO로 사용
		System.out.println("DB전 articleMap: "+articleMap);
		sqlSession.insert("mapper.board.insertNewReply", articleMap);
		return articleNO;
	}

}
