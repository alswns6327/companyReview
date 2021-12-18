package com.study.service;


import org.apache.ibatis.session.SqlSession;

import com.study.dao.LoginDAO;
import com.study.vo.MemberVO;

public class MemberService {

	public int join(SqlSession sqlSession, MemberVO member) {
		
		LoginDAO mapper=sqlSession.getMapper(LoginDAO.class);
		
		if(mapper.idCheck(member.getId())==1) {
			return 1;
		}else {
			mapper.join(member);
			return 0;
		}
		
		
	}
	
}
