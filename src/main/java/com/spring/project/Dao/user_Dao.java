package com.spring.project.Dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.spring.project.Dto.dataDTO;

public interface user_Dao {	
	//--------------소영----------------------//
	
	

	public void insert_user_userInsert(dataDTO data);

	public void insert_company_companyInsert(dataDTO data);

	public void insert_company_companyInsert2(dataDTO data);
	
	//로그인한 회원 정보
	public List<dataDTO> loginInfo(dataDTO data);	
	
	//공지 등록
	public void noticeInsert(dataDTO dto);
	
	//공지 목록
	public List<dataDTO> noticeSelect();
	
	//공지 수정
	public void noticeUpdate(dataDTO data);
	
	//공지 상세
	public List<dataDTO> noticeDetail(dataDTO data);
	
	//공지 삭제
	public void noticeDelete(dataDTO data);
	
	//회원 정보 변경
	public void user_info_update(dataDTO data);
	
	//제품등록
	public void productInsert(dataDTO data);
	
	//제품목록(전제)
	public List<dataDTO> productList();
	
	//제품상세
	public List<dataDTO> productDetail(dataDTO data);
	
	//제품 수정
	public void productUpdate(dataDTO data);
	
	//제품 삭제
	public void productDelete(dataDTO data);
	
	//Q&A 리스트 조회
	public List<dataDTO> questionList();
	//Q&A 등록
	public void questionInsert(dataDTO data);
	//Q&A 수정
	public void questioneditor(dataDTO data);
	//Q&A 상세
	public List<dataDTO> questionDetail(dataDTO data);
	//Q&A 삭제
	public void questionDelete(dataDTO data);
	
	//댓글 등록 (11월 17일)
	public void requestioninsert(dataDTO data);
	//댓글 상세 (11월 17일)
	public List<dataDTO> requestionDetail(dataDTO data);
	//댓글 수정 (11월 17일)
	public void requestioneditor(dataDTO data);
	//댓글 삭제 (11월 17일)
	public void requestionDelete(dataDTO data);
	//아이디 중복 체크(11월 18일)
	public int account_id_check(dataDTO data);
		
		
	//--------------------------------------//
	
	//견적 등록
	public void estimateInsert(dataDTO data);
	
	//견적 답변등록
	public void estimatehistoryInsert(dataDTO data);
}
