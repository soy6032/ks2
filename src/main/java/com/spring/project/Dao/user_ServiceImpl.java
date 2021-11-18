package com.spring.project.Dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.spring.project.Dto.dataDTO;

@Service
public class user_ServiceImpl implements user_Service {

	@Autowired
	private user_Dao user_dao;



	@Override
	public void userInsert(dataDTO data) {
		this.user_dao.insert_user_userInsert(data);
	}

	@Override
	public void companyInsert(dataDTO data) {
		this.user_dao.insert_company_companyInsert(data);
		
	}

	@Override
	public void companyInsert2(dataDTO data) {
		this.user_dao.insert_company_companyInsert2(data);
		
	}


    //공지 등록
	@Override
	public void noticeInsert(dataDTO dto) {
		// TODO Auto-generated method stub
		user_dao.noticeInsert(dto);
	}
	
	//공지 목록
	@Override
	public List<dataDTO> noticeSelect() {
		// TODO Auto-generated method stub
		return user_dao.noticeSelect();
	}
	
	//공지 수정
	@Override
	public void noticeUpdate(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.noticeUpdate(data);
	}
	
	//공지 상세
	@Override
	public List<dataDTO> noticeDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return user_dao.noticeDetail(data);
	}
	
	//공지 삭제
	@Override
	public void noticeDelete(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.noticeDelete(data);
	}
	
	//로그인 정보
	@Override
	public List<dataDTO> loginInfo(dataDTO data) {
		// TODO Auto-generated method stub
		return user_dao.loginInfo(data);
	}

	//내정보 수정
	@Override
	public void user_info_update(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.user_info_update(data);
	}

	//제품등록
	@Override
	public void productInsert(dataDTO data) {
		user_dao.productInsert(data);
	}
	
	//제품등록
	@Override
	public List<dataDTO> productList() {
		return user_dao.productList();
	}

	//제품 상세
	@Override
	public List<dataDTO> productDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return user_dao.productDetail(data);
	}

	//제품 수정
	@Override
	public void productUpdate(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.productUpdate(data);
	}

	//제품 삭제
	@Override
	public void productDelete(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.productDelete(data);
	}
	
	//Q&A 리스트 조회
	@Override
	public List<dataDTO> questionList() {
		return user_dao.questionList();
	}
	//Q&A 등록
	@Override
	public void questionInsert(dataDTO data) {
		user_dao.questionInsert(data);	
	}
	//Q&A 상세
	@Override
	public List<dataDTO> questionDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return user_dao.questionDetail(data);
	}
	//Q&A 수정
	@Override
	public void questioneditor(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.questioneditor(data);	
	}
	// Q&A 삭제
	@Override
	public void questionDelete(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.questionDelete(data);
	}
		
	//댓글 등록 (11월 17일)
	@Override
	public void requestioninsert(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.requestioninsert(data);
	}
	//댓글 상세 (11월 17일)
	@Override
	public List<dataDTO> requestionDetail(dataDTO data) {
		return user_dao.requestionDetail(data);
	}
	//댓글 수정 (11월 17일)
	@Override
	public void requestioneditor(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.requestioneditor(data);
	}
	//댓글 삭제 (11월 17일)
	@Override
	public void requestionDelete(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.requestionDelete(data);
	}
	//아이디 중복 체크 (11월 18일)
	@Override
	public int account_id_check(dataDTO data){
		// TODO Auto-generated method stub
		int result = user_dao.account_id_check(data);
		return result;
	}

	//견적등록
	@Override
	public void estimateInsert(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.estimateInsert(data);
	}

	@Override
	public void estimatehistoryInsert(dataDTO data) {
		// TODO Auto-generated method stub
		user_dao.estimatehistoryInsert(data);
	}
	

}
