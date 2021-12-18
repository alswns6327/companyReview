package com.study.project;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.service.MemberService;
import com.study.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("join")
	public void join(HttpServletResponse response, HttpServletRequest request ,MemberVO member) {
		
		AbstractApplicationContext ctx=new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		MemberService service=ctx.getBean("memberService", MemberService.class);
		
		int check= service.join(sqlSession, member);
		if(check==0) {
			System.out.println("id 저장");
			request.getSession().setAttribute("id", member.getId());
		}
		try {
			response.getWriter().write(String.valueOf(check));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}