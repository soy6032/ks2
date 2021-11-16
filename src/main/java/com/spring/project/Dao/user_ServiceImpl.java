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
	

}
