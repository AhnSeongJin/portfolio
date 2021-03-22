package com.myspring.arumjigi.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.arumjigi.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public String overlapped(String id) throws Exception;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;
	 public MemberVO login(Map loginMap) throws Exception;
	 public MemberVO searchId(Map searchMap) throws Exception;
	 public MemberVO searchPwd(Map searchMap) throws Exception;
}
