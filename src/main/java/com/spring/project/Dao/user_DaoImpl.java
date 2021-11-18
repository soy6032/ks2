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
	
	
	//Q&A 리스트 조회 + 댓글 조회
	@Override
	public List<dataDTO> questionList() {
		return sqlSession.selectList(NS+".questionList");
	}
	//Q&A 등록
	@Override
	public void questionInsert(dataDTO data) {
		sqlSession.insert(NS+".questionInsert", data);
	}
	//Q&A 상세
	@Override
	public List<dataDTO> questionDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".questionDetail", data);
	}
	//Q&A 삭제
	@Override
	public void questionDelete(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".questionDelete", data);
	}
	//Q&A 수정
	@Override
	public void questioneditor(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".questioneditor", data);
	}
	
	//댓글 등록 (11월 17일)
	@Override
	public void requestioninsert(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".requestioninsert", data);
	}
	//댓글 상세 (11월 17일)
	@Override
	public List<dataDTO> requestionDetail(dataDTO data) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".requestionDetail", data);
	}
	//댓글 수정 (11월 17일)
	@Override
	public void requestioneditor(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".requestioneditor", data);
	}
	//댓글 삭제 (11월 17일)
	@Override
	public void requestionDelete(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".requestionDelete", data);
	}
	//아이디 중복 체크 (11월 18일)
	@Override
	public int account_id_check(dataDTO data){
		int result = sqlSession.selectOne(NS+".account_id_check", data);
		return result;
	}

	@Override
	public void estimateInsert(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".estimateInsert", data);
	}

	@Override
	public void estimatehistoryInsert(dataDTO data) {
		// TODO Auto-generated method stub
		sqlSession.insert(NS+".estimatehistoryInsert", data);
	}


}
