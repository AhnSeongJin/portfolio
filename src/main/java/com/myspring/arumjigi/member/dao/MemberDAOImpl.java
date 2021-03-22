package com.myspring.arumjigi.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.arumjigi.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		System.out.println("insert DAO 메소드 전");
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		System.out.println("insert DAO 메소드 후");
		return result;
	}

	@Override
	public String selectOverlappedID(String id) throws DataAccessException {
		String result = sqlSession.selectOne("mapper.member.selectOverlappedID", id);
		System.out.println(result);
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}

	@Override
	public MemberVO login(Map loginMap) throws DataAccessException {
		MemberVO member = (MemberVO) sqlSession.selectOne("mapper.member.login", loginMap);
		return member;
	}

	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException {
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}

	@Override
	public MemberVO searchId(Map searchMap) throws DataAccessException {
		//System.out.println("DAO: "+searchMap);
		MemberVO member = (MemberVO) sqlSession.selectOne("mapper.member.searchId", searchMap);
		//System.out.println("DAO: "+member);
		return member;
	}
	
	@Override
	public MemberVO searchPwd(Map searchMap) throws DataAccessException {
		MemberVO member = (MemberVO) sqlSession.selectOne("mapper.member.searchPwd", searchMap);
		return member;
	}

}
