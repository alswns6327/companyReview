package com.study.dao;

import com.study.vo.MemberVO;

public interface LoginDAO {
	
	public int idCheck(String id);
	
	public void join(MemberVO member);
	
}
