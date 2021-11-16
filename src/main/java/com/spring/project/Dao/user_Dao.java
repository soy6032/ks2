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
	
	
	//--------------------------------------//
	
	
	
	//--------------소영----------------------//
	
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
		
		
		//--------------------------------------//
}
