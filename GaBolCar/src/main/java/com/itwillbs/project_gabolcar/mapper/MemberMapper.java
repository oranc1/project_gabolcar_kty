package com.itwillbs.project_gabolcar.mapper;

import com.itwillbs.project_gabolcar.vo.QuestionVO;

public interface MemberMapper {
	
	// 1:1 문의 게시판 쓰기
	int insertQuestionBoard(QuestionVO question);

}
