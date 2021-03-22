package com.myspring.arumjigi.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.arumjigi.member.vo.MemberVO;

public interface MemberDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public String selectOverlappedID(String id) throws DataAccessException;
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 public MemberVO login(Map loginMap) throws DataAccessException;
	 public MemberVO searchId(Map searchMap) throws DataAccessException;
	 public MemberVO searchPwd(Map searchMap) throws DataAccessException;

}
