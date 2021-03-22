package com.myspring.arumjigi.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.arumjigi.member.dao.MemberDAO;
import com.myspring.arumjigi.member.vo.MemberVO;


@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = memberDAO.selectAllMemberList();
		return membersList;
	}

	@Override
	public String overlapped(String id) throws Exception {
		return memberDAO.selectOverlappedID(id);
	}

	@Override
	public int addMember(MemberVO member) throws DataAccessException {
		return memberDAO.insertMember(member);
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
		return memberDAO.deleteMember(id);
	}
	
	@Override
	public MemberVO login(Map loginMap) throws Exception{
		return memberDAO.login(loginMap);
	}
	
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception{
		return memberDAO.loginById(memberVO);
	}

	@Override
	public MemberVO searchId(Map searchMap) throws Exception {
		return memberDAO.searchId(searchMap);
	}
	
	@Override
	public MemberVO searchPwd(Map searchMap) throws Exception {
		return memberDAO.searchPwd(searchMap);
	}
	
	
	

}
