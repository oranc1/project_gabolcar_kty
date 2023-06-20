package com.itwillbs.project_gabolcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.project_gabolcar.mapper.MemberMapper;
import com.itwillbs.project_gabolcar.vo.QuestionVO;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;

	public int questionBoard(QuestionVO question) {
		// TODO Auto-generated method stub
		return mapper.insertQuestionBoard(question);
	}
}
