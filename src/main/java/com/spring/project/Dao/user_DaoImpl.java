package com.spring.project.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.project.Dto.dataDTO;

@Repository
public class user_DaoImpl implements user_Dao {
	private final String NS = "com.spring.project.map.map";

	@Autowired
	private SqlSessionTemplate sqlSession;

	

	@Override
	public void insert_user_userInsert(dataDTO data) {
		this.sqlSession.insert(NS+".insert_user_userInsert", data);
	}

	@Override
	public void insert_company_companyInsert(dataDTO data) {
		this.sqlSession.insert(NS+".insert_company_companyInsert", data);
	}

	/*
	 * @Override public void insert_company_companyInsert(int account_idx) {
	 * this.sqlSession.insert(NS+".insert_company_companyInsert2", account_idx);
	 * 
	 * }
	 */

	@Override
	public void insert_company_companyInsert2(dataDTO data) {
		this.sqlSession.insert(NS+".insert_company_companyInsert2", data);
	
	}
	
	
	//공지 등록
	@Override
	public void noticeInsert(dataDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".noticeInsert", dto);
	}

	//공지 목록
	@Override
	public List<dataDTO> noticeSelect() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".noticeSelect");
	}

	//공지 수정
	@Override
	public void noticeUpdate(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".noticeUpdate", data);
	}

	//공지 상세
	@Override
	public List<dataDTO> noticeDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".noticeDetail", data);
	}

	//공지 삭제
	@Override
	public void noticeDelete(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".noticeDelete", data);
	}

	//로그인 정보
	@Override
	public List<dataDTO> loginInfo(dataDTO data) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".loginInfo", data);
	}

	//내정보 수정
	@Override
	public void user_info_update(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".user_info_update", data);
	}
	
	//제품 등록
	@Override
	public void productInsert(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".productInsert", data);
	}

	//제품 목록
	@Override
	public List<dataDTO> productList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".productList");
	}

	//제품 상세
	@Override
	public List<dataDTO> productDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".productDetail", data);
	}

	//제품 수정
	@Override
	public void productUpdate(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".productUpdate", data);
	}

	//제품 삭제
	@Override
	public void productDelete(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".productDelete", data);
	}


}
