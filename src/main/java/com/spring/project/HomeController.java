package com.spring.project;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.spring.project.Dao.user_Service;
import com.spring.project.Dto.dataDTO;

/* 
 * 타이틀: 베이스 프로젝트 HomeController
 * 파라미터 : -
 * 리턴값 : -
 * 설명 : 로그인, SNS 로그인, 403페이지 같은 페이지 핸들을 위한 컨트롤러
 * */
@Controller
public class HomeController {
	@Autowired
	private user_Service user_service;
		
	
	 protected static String FTP_IP   = "203.245.44.15"; // FTP 접속지 IP
	 protected static int    FTP_PORT = 22;             // FTP 접속지 Port
	 protected static String FTP_ID   = "bsrraon";        // ID
	 protected static String FTP_PWD  = "raon123!@";        // PASSWORD
	 protected static String FTP_PATH = "";
	 ChannelSftp chSftp               = null;
	 FileInputStream fi               = null;
	 
	 
	 public boolean sessionCheck(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  //check if user is login
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      if (!(auth instanceof AnonymousAuthenticationToken)) {
	        UserDetails userDetail = (UserDetails) auth.getPrincipal();	
	        session.setAttribute("login_check", "ok");
	        session.setAttribute("user_id", userDetail.getUsername());
	       // System.out.println("*** user : "+ userDetail.getUsername());
	      }     
	      	
			String check = (String) session.getAttribute("login_check");
			//System.out.println(check);
			if(check!=null) {
				if(check.equals("ok")||check!=null) {
					return true;
				}
			}		
			return false;
	}
	 

	 
	 /*
	  * 회사소개 > 오시는길
	  * 
	  * */
	 @RequestMapping(value = "/directions", method = RequestMethod.GET)
	    public String directions() {
	    	
		 
		 
		 
	      return "company/directions";
	  }
	 
	 
	 /*
	  * 회사소개 > 인사말
	  * 
	  * */
	 @RequestMapping(value = "/company", method = RequestMethod.GET)
	    public String company() {
	    	
		 
		 
		 
	      return "company/company";
	  }
	 
	 
	 /*
	  * 공지사항 수정
	  * 
	  * */
	 @RequestMapping(value = "/noticeeditor", method = RequestMethod.GET)
	    public String notice_editor() {
	    	
		 
		 
		 
	      return "notice/notice_editor";
	  }
	 
	 /*
	  * 공지사항 상세
	  * 
	  * */
	 @RequestMapping(value = "/noticedocument/{notice_idx}", method = RequestMethod.GET)
	    public String notice_document(@PathVariable("notice_idx") int notice_idx, HttpServletRequest request, dataDTO data, Model model) {
	    	
		 List<dataDTO> notice_detail = user_service.noticeDetail(data);
		 model.addAttribute("notice_datail", notice_detail);
		 
		 
	      return "notice/notice_document";
	  }
	 
	 /*
	  * 공지사항 목록
	  * 
	  * */
	 @RequestMapping(value = "/notice", method = RequestMethod.GET)
	    public String notice(Model model) {
	    	
		 List<dataDTO> notice_list = user_service.noticeSelect();
		 model.addAttribute("notice_list", notice_list);
		 
		 System.out.println(notice_list.size());
		 int size = notice_list.size();
		 model.addAttribute("size", size);
	      return "notice/notice";
	  }
	 
	 /*
	  * 내정보 수정 페이지
	  * 
	  * */
	 @RequestMapping(value = "/mypageeditor", method = RequestMethod.GET)
	    public String mypageeditor(HttpServletRequest request, dataDTO data, Model model, Principal principal) {
		    String id = principal.getName();
			System.out.println("id test : " + id);
			data.setAccount_id(id);
			List<dataDTO> user_info = user_service.loginInfo(data);
			model.addAttribute("user_info", user_info);
			
		 
	      return "account/mypage_editor";
	  }
	 
	 /*
	  * 내정보 수정
	  * 
	  * */
	@RequestMapping(value = "/my_infoUpdate", method = RequestMethod.POST)
	public String my_infoUpdate(HttpServletRequest request, dataDTO data, Model model, Principal principal) {
		
		
		
		user_service.user_info_update(data);
	   
	    return "redirect:/mypage";
	}
	 /*
	  * 내정보 조회
	  * 
	  * */
	 @RequestMapping(value = "/mypage", method = RequestMethod.GET)
	    public String mypage(HttpServletRequest request, dataDTO data, Model model, Principal principal) {
	    	
		//로그인 회원 id
			String id = principal.getName();
			System.out.println("id test : " + id);
			data.setAccount_id(id);
			List<dataDTO> user_info = user_service.loginInfo(data);
			model.addAttribute("user_info", user_info);
			
			System.out.println("**loginInfoTest : " + user_info.get(0).getAccount_email());
		 
		 
	      return "account/mypage";
	  }
	 
	 
	 /*
	  * 비밀번호찾기
	  * 
	  * */
	 @RequestMapping(value = "/findpw", method = RequestMethod.GET)
	    public String findpw() {
	    	
		 
		 
		 
	      return "account/find_pw";
	  }
	 
	 /*
	  * 아이디찾기
	  * 
	  * */
	 @RequestMapping(value = "/findid", method = RequestMethod.GET)
	    public String findid() {
	    	
		 
		 
		 
	      return "account/find_id";
	  }
	 
	 
	 /*
	  * 회원가입 Step3-1 - 개인정보 입력
	  * 
	  * */
	 @RequestMapping(value = "/joinform_p", method = RequestMethod.GET)
	    public String joinform_p() {
	    	
		 
		 
		 
	      return "account/join_step3-1";
	  }
	 
	 
	 /*
	  * 회원가입 Step3 - 기업정보 입력
	  * 
	  * */
	 @RequestMapping(value = "/joinform", method = RequestMethod.GET)
	    public String joinform() {
	    	
		 
		 
		 
	      return "account/join_step3";
	  }
	 
	 
	 
	 /*
	  * 회원가입 Step2 - 약관동의
	  * 
	  * */
	 @RequestMapping(value = "/joinagree", method = RequestMethod.GET)
	    public String joinagree() {
	    	
		 
		 
		 
	      return "account/join_step2";
	  }
	 
	 
	 /*
	  * 회원가입 Step1 - 유형 선택
	  * 
	  * */
	 @RequestMapping(value = "/join", method = RequestMethod.GET)
	    public String join() {
	    	
		 
		 
		 
	      return "account/join_step1";
	  }
	 
	 /*
	  * 제품 등록
	  * 
	  * */
	 @RequestMapping(value = "/productInsert", method = RequestMethod.POST)
	    public String priductInsert(HttpServletRequest request, Model model,dataDTO data, 
	    		@RequestParam("file_file") MultipartFile file_file,
	    		@RequestParam("file_img") MultipartFile file_img) {
	    	
		 if(!file_file.isEmpty() || !file_img.isEmpty()) { //파일이 있을때 실행
	  		  // FTP 관련 객체 선언
	  		
	  	 	Session ses = null;             // 접속계정
	  	 	Channel ch  = null;             // 접속
	  	 	JSch jsch   = new JSch();       // jsch 객체를 생성
	  	 	String fileoriname = "";
	  	 	String filename = "";
	  	 	String fileUUID = "";
	  	 	
	  	 	String fileoriname_m = "";
	  	 	String filename_m = "";
	  	 	String fileUUID_m = "";
	  	 	
	  	 	
	  	 	
	        
	  	 	try {
	            // 세션 객체를 생성(사용자 이름, 접속할 호스트, 포트)
	            ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
	            // 비밀번호 설정
	            ses.setPassword(FTP_PWD);
	      
	            // 세션과 관련된 정보를 설정
	            Properties p = new Properties();

	            // 호스트 정보를 검사하지 않음
	            p.put("StrictHostKeyChecking", "no");
	            ses.setConfig(p);
	            System.out.println("연결중");
	            // 접속
	            ses.connect();   
	            System.out.println("///////////////////확인용3");
	            // 채널을 오픈(sftp)
	            ch = ses.openChannel("sftp");
	            System.out.println("///////////////////확인용4");
	            // 채널에 연결(sftp)      
	            ch.connect();        

	            // 채널을 FTP용 채널 객체로 개스팅

	            chSftp = (ChannelSftp)ch;   
	            System.out.println("FTP 연결이 되었습니다.");          
	            
	            boolean result = true;
	            InputStream in = null;
	            InputStream in_i = null;
	            InputStream in_v = null;
	            InputStream in_m = null;
	            
	  	          try {
	  	        	 
	  	              //fileName = URLEncoder.encode(fileName,"EUC-KR");
	  	              in = file_file.getInputStream();
	  	              	in_m = file_img.getInputStream();
	  	              //chSftp.cd("/home/codebros/codebros/public/upload/workform");
	  	              System.out.println("///////////////////확인용1");
	  	              chSftp.cd("/bsrraon/tomcat/webapps/imagefile/ks/product");  
	  	              System.out.println("///////////////////확인용2");
	  	              MultipartFile mf_x = file_file;
	  	              fileoriname = mf_x.getOriginalFilename();
	  	              filename = FilenameUtils.getExtension(mf_x.getOriginalFilename());
	  	              
	  	              MultipartFile mf_m = file_img;
		              fileoriname_m = mf_m.getOriginalFilename();
		              filename_m = FilenameUtils.getExtension(mf_m.getOriginalFilename());
		              
		              SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		              String today = dateFormat.format(new Date());
	  	               
	  	              
	  	              fileUUID = today+ "_file."+ filename;
	  	              fileUUID_m = today+ "_img."+filename_m;
	  	
	  	          	  System.out.println("====================");
	  	          	  System.out.println("filename : "+ in);
	  	          	  System.out.println("filename : "+ fileoriname);
	  	          	  System.out.println("rename : "+ fileUUID);
	  	          	  System.out.println("====================");
	  	          	  
	  	          	System.out.println("====================");
		          	  System.out.println("filename : "+ in_m);
		          	  System.out.println("filename : "+ fileoriname_m);
		          	  System.out.println("rename : "+ fileUUID_m);
		          	  System.out.println("====================");
		          	  
		          
	  	           	
	  	              chSftp.put(in, fileUUID);	
	  	              chSftp.put(in_m, fileUUID_m);
	  	              
	  	              
	  	          } catch (Exception e) {
	  	              e.printStackTrace();
	  	              result = false;
	  	          }

	            chSftp.quit();                            // Sftp 연결 종료
	            System.out.println("FTP 연결을 종료합니다.");
	         } catch(Exception e) {
	            e.printStackTrace();
	            System.out.println("FTP 연결에 실패했습니다.");
	         }
	  	
	  	 	   System.out.println("////////////////////////"+ fileoriname);
	           System.out.println("////////////////////////"+ fileUUID);  
	           
	           //corarhdto.setFile(fileUUID);
	          //user_service.subjectinsert(corarhdto);
	           data.setProduct_image(fileUUID);
	           data.setProduct_file(fileUUID_m);
	           
	          
	           
	           }
	  		else {
	  			data.setProduct_image("null");
	            data.setProduct_file("null");
	          }
		 
		 user_service.productInsert(data);
		 
	      return "redirect:/index";
	  }
	 
	 /*
	  * 제품 목록(전체)
	  * 
	  * */
	 @RequestMapping(value = "/productList", method = RequestMethod.GET)
	    public String productList(Model model) {
	    	
		 
		 List<dataDTO> productList = user_service.productList();
		 model.addAttribute("productList", productList);
		 System.out.println("productList_size : " + productList.size());
		 
	      return "productList";
	  }
	 
	 /*
	  * 제품 상세
	  * 
	  * */
	 @RequestMapping(value = "/productDetail/{product_idx}", method = RequestMethod.GET)
	    public String productDetail(@PathVariable("product_idx") int product_idx, Model model, dataDTO data) {
	    	
		 data.setProduct_idx(product_idx);
		 
		 List<dataDTO> productDetail = user_service.productDetail(data);
		 model.addAttribute("productDetail", productDetail);
		 System.out.println("productDetail_size : " + productDetail.size());
		 
	      return "productList";
	  }
	 
	 /*
	  * 제품 상세
	  * 
	  * */
	 @RequestMapping(value = "/productEdit/{product_idx}", method = RequestMethod.GET)
	    public String productEdit(@PathVariable("product_idx") int product_idx, Model model, dataDTO data) {
	    	
		 data.setProduct_idx(product_idx);
		 
		 List<dataDTO> productDetail = user_service.productDetail(data);
		 model.addAttribute("productDetail", productDetail);
		 System.out.println("productDetail_size : " + productDetail.size());
		 
	      return "test2";
	  }
	 
	 
	 /*
	  * 제품 삭제
	  * 
	  * */
	 @RequestMapping(value = "/productDelete/{product_idx}", method = RequestMethod.GET)
	    public String productDelete(@PathVariable("product_idx") int product_idx, Model model, dataDTO data) {
	    	
		 data.setProduct_idx(product_idx);
		 
		 user_service.productDelete(data);
		 
	      return "test2";
	  }
	 /*
	  * 제품 수정
	  * 
	  * */
	 @RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
	    public String productUpdate(HttpServletRequest request, Model model,dataDTO data, 
	    		@RequestParam("file_file") MultipartFile file_file,
	    		@RequestParam("file_img") MultipartFile file_img) {
	    	
		 if(!file_file.isEmpty() || !file_img.isEmpty()) { //파일이 있을때 실행
	  		  // FTP 관련 객체 선언
	  		
	  	 	Session ses = null;             // 접속계정
	  	 	Channel ch  = null;             // 접속
	  	 	JSch jsch   = new JSch();       // jsch 객체를 생성
	  	 	String fileoriname = "";
	  	 	String filename = "";
	  	 	String fileUUID = "";
	  	 	
	  	 	String fileoriname_m = "";
	  	 	String filename_m = "";
	  	 	String fileUUID_m = "";
	  	 	
	  	 	
	  	 	
	        
	  	 	try {
	            // 세션 객체를 생성(사용자 이름, 접속할 호스트, 포트)
	            ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
	            // 비밀번호 설정
	            ses.setPassword(FTP_PWD);
	      
	            // 세션과 관련된 정보를 설정
	            Properties p = new Properties();

	            // 호스트 정보를 검사하지 않음
	            p.put("StrictHostKeyChecking", "no");
	            ses.setConfig(p);
	            System.out.println("연결중");
	            // 접속
	            ses.connect();   
	            System.out.println("///////////////////확인용3");
	            // 채널을 오픈(sftp)
	            ch = ses.openChannel("sftp");
	            System.out.println("///////////////////확인용4");
	            // 채널에 연결(sftp)      
	            ch.connect();        

	            // 채널을 FTP용 채널 객체로 개스팅

	            chSftp = (ChannelSftp)ch;   
	            System.out.println("FTP 연결이 되었습니다.");          
	            
	            boolean result = true;
	            InputStream in = null;
	            InputStream in_i = null;
	            InputStream in_v = null;
	            InputStream in_m = null;
	            
	  	          try {
	  	        	 
	  	              //fileName = URLEncoder.encode(fileName,"EUC-KR");
	  	              in = file_file.getInputStream();
	  	              	in_m = file_img.getInputStream();
	  	              //chSftp.cd("/home/codebros/codebros/public/upload/workform");
	  	              System.out.println("///////////////////확인용1");
	  	              chSftp.cd("/bsrraon/tomcat/webapps/imagefile/ks/product");  
	  	              System.out.println("///////////////////확인용2");
	  	              MultipartFile mf_x = file_file;
	  	              fileoriname = mf_x.getOriginalFilename();
	  	              filename = FilenameUtils.getExtension(mf_x.getOriginalFilename());
	  	              
	  	              MultipartFile mf_m = file_img;
		              fileoriname_m = mf_m.getOriginalFilename();
		              filename_m = FilenameUtils.getExtension(mf_m.getOriginalFilename());
		              
		              SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		              String today = dateFormat.format(new Date());
	  	               
	  	              
	  	              fileUUID = today+ "_file."+ filename;
	  	              fileUUID_m = today+ "_img."+filename_m;
	  	
	  	          	  System.out.println("====================");
	  	          	  System.out.println("filename : "+ in);
	  	          	  System.out.println("filename : "+ fileoriname);
	  	          	  System.out.println("rename : "+ fileUUID);
	  	          	  System.out.println("====================");
	  	          	  
	  	          	System.out.println("====================");
		          	  System.out.println("filename : "+ in_m);
		          	  System.out.println("filename : "+ fileoriname_m);
		          	  System.out.println("rename : "+ fileUUID_m);
		          	  System.out.println("====================");
		          	  
		          
	  	           	
	  	              chSftp.put(in, fileUUID);	
	  	              chSftp.put(in_m, fileUUID_m);
	  	              
	  	              
	  	          } catch (Exception e) {
	  	              e.printStackTrace();
	  	              result = false;
	  	          }

	            chSftp.quit();                            // Sftp 연결 종료
	            System.out.println("FTP 연결을 종료합니다.");
	         } catch(Exception e) {
	            e.printStackTrace();
	            System.out.println("FTP 연결에 실패했습니다.");
	         }
	  	
	  	 	   System.out.println("////////////////////////"+ fileoriname);
	           System.out.println("////////////////////////"+ fileUUID);  
	           
	           //corarhdto.setFile(fileUUID);
	          //user_service.subjectinsert(corarhdto);
	           data.setProduct_image(fileUUID);
	           data.setProduct_file(fileUUID_m);
	           
	          
	           
	           }
	  		else {
	  			data.setProduct_image("null");
	            data.setProduct_file("null");
	          }
		 
		 user_service.productUpdate(data);
		 
	      return "redirect:/index";
	  }
	 
	 
	 /*
	  * 제품 수정
	  * 
	  * */
	 @RequestMapping(value = "/estimateInsert", method = RequestMethod.POST)
	    public String productUpdate(HttpServletRequest request, Model model,dataDTO data, 
	    		@RequestParam("file_file") MultipartFile file_file) {
	    	
		 if(!file_file.isEmpty()) { //파일이 있을때 실행
	  		  // FTP 관련 객체 선언
	  		
	  	 	Session ses = null;             // 접속계정
	  	 	Channel ch  = null;             // 접속
	  	 	JSch jsch   = new JSch();       // jsch 객체를 생성
	  	 	String fileoriname = "";
	  	 	String filename = "";
	  	 	String fileUUID = "";
	  	 	
	  	 	
	  	 	
	  	 	
	        
	  	 	try {
	            // 세션 객체를 생성(사용자 이름, 접속할 호스트, 포트)
	            ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
	            // 비밀번호 설정
	            ses.setPassword(FTP_PWD);
	      
	            // 세션과 관련된 정보를 설정
	            Properties p = new Properties();

	            // 호스트 정보를 검사하지 않음
	            p.put("StrictHostKeyChecking", "no");
	            ses.setConfig(p);
	            System.out.println("연결중");
	            // 접속
	            ses.connect();   
	            System.out.println("///////////////////확인용3");
	            // 채널을 오픈(sftp)
	            ch = ses.openChannel("sftp");
	            System.out.println("///////////////////확인용4");
	            // 채널에 연결(sftp)      
	            ch.connect();        

	            // 채널을 FTP용 채널 객체로 개스팅

	            chSftp = (ChannelSftp)ch;   
	            System.out.println("FTP 연결이 되었습니다.");          
	            
	            boolean result = true;
	            InputStream in = null;
	            InputStream in_i = null;
	            InputStream in_v = null;
	            InputStream in_m = null;
	            
	  	          try {
	  	        	 
	  	              //fileName = URLEncoder.encode(fileName,"EUC-KR");
	  	              in = file_file.getInputStream();
	  	              //chSftp.cd("/home/codebros/codebros/public/upload/workform");
	  	              System.out.println("///////////////////확인용1");
	  	              chSftp.cd("/bsrraon/tomcat/webapps/imagefile/ks/product");  
	  	              System.out.println("///////////////////확인용2");
	  	              MultipartFile mf_x = file_file;
	  	              fileoriname = mf_x.getOriginalFilename();
	  	              filename = FilenameUtils.getExtension(mf_x.getOriginalFilename());
	  	              
		              
		              SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		              String today = dateFormat.format(new Date());
	  	               
	  	              
	  	              fileUUID = today+ "_file."+ filename;
	  	
	  	          	  System.out.println("====================");
	  	          	  System.out.println("filename : "+ in);
	  	          	  System.out.println("filename : "+ fileoriname);
	  	          	  System.out.println("rename : "+ fileUUID);
	  	          	  System.out.println("====================");
	  	          	  
		          	  
		          
	  	           	
	  	              chSftp.put(in, fileUUID);	
	  	              
	  	              
	  	          } catch (Exception e) {
	  	              e.printStackTrace();
	  	              result = false;
	  	          }

	            chSftp.quit();                            // Sftp 연결 종료
	            System.out.println("FTP 연결을 종료합니다.");
	         } catch(Exception e) {
	            e.printStackTrace();
	            System.out.println("FTP 연결에 실패했습니다.");
	         }
	  	
	  	 	   System.out.println("////////////////////////"+ fileoriname);
	           System.out.println("////////////////////////"+ fileUUID);  
	           
	           //corarhdto.setFile(fileUUID);
	          //user_service.subjectinsert(corarhdto);
	           data.setEstimate_file(fileUUID);
	           
	          
	           
	           }
	  		else {
	  			data.setEstimate_file("null");
	          }
		 
		 
	      return "redirect:/index";
	  }
	 
	 
	//개인 회원가입.
	@RequestMapping(value = "/accountsave", method = RequestMethod.POST)
    public String accountsave(HttpServletRequest request, Model model, dataDTO datadto) {
	  System.out.println("==========userjoin==============");
      user_service.userInsert(datadto);
      System.out.println("==========userjoin==============");
      return "/login";
    }
	//기업 회원가입.
	@RequestMapping(value = "/companysave", method = RequestMethod.POST)
    public String companysave(HttpServletRequest request, Model model, dataDTO datadto) {
	  System.out.println("==========userjoin==============");
      user_service.companyInsert(datadto);
      System.out.println("=====idx" + datadto.getAccount_idx());
      user_service.companyInsert2(datadto);
      
      System.out.println("==========userjoin==============");
      return "/login";
    }
	 
	/* 
	 * 타이틀: 메인 페이지(첫페이지)
	 * 파라미터 : -
	 * 리턴값 : home.jsp 페이지 출력
	 * 설명 : 도메인을 통해 웹에 접속시 맨처음 전시되는 페이지
	 * */
    @RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
    public String welcomePage(HttpServletRequest request) {
    	if(!sessionCheck(request)) {			
			 return "redirect:/login";
		}
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Hello World");
        model.addObject("message", "This is welcome page!");
        model.setViewName("home");
        return "home";

    }
    
    @RequestMapping(value = "/test2", method = RequestMethod.GET)
    public String test2() {
    	
      return "test";
    }
    
    @RequestMapping(value = "/ftest", method = RequestMethod.GET)
    public String ftest() {
    	
      return "test2";
    }
    
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test() {
    	
      return "index";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
 	   System.out.println("!!!!!!!!!!!!!!!!!");
        session.invalidate();
        return "redirect:/login";
    }
    
    /* 
	 * 타이틀: 회원가입 페이지
	 * 파라미터 : -
	 * 리턴값 : join.jsp 페이지 출력
	 * 설명 : 사용자가 회원가입을 하기위한 페이지로 이동
	 * */
    @RequestMapping(value = "/join_form", method = RequestMethod.GET)
    public String join_form() {
    	
      return "join";
    }
    
   

    /* 
	 * 타이틀: 로그인 페이지
	 * 파라미터 : String error, HttpSession session, String logout,Model model,HttpServletRequest request
	 * 리턴값 : login.jsp 페이지 출력
	 * 설명 : 사용자 회원가입 페이지(join_form) 에서 입력 받은 데이터를  user_service.userInsert 서비스를 통해 데이터베이스 적재
	 * */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(
    	@RequestParam(value = "error", required = false) String error, // 로그인 실패 시 spring 시큐리티에서 설정한 error 메시지 출력
    	HttpSession session,  //현재 웹 브라우저에 저장되어있는 세션값 받음
        @RequestParam(value = "logout", required = false) String logout,  // 로그아웃 시 spring 시큐리티에서 설정한 logout 메시지 출력
        Model model, //페이지 이동 및 페이지 데이터 전달을 위한 Model 객체 선언
        HttpServletRequest request) {  // login페이지에 전달되는 Get 데이터를 받기위한 객체
    	
      if (error != null) {
    	  model.addAttribute("error", "Invalid username and password!");
      }

      if (logout != null) {
    	  model.addAttribute("msg", "You've been logged out successfully.");
      }
      
      
      /*
       * SNS 로그인 url 전달
       * 사용법 : model.addAttribute를 통해 카카오톡 로그인 url 을 jsp에 넘긴 후 a태그에 href에 적용
       * */
      KakaoController kakaoLogin = new KakaoController(); //카카오톡 설정을 위한 Kakao 컨트롤러 객체 생성
	  String kakaoUrl = kakaoLogin.getAuthorizationUrl(session); // getAuthorizationUrl 함수를 이용해 카카오 로그인을 위한 url 반환받음
	  model.addAttribute("kakao_url", kakaoUrl); // 카카오 로그인 url 전달
	  
	  NaverController naverLogin = new NaverController(); //네이버 설정을 위한 naver 컨트롤러 객체 생성
	  String naverUrl = naverLogin.getAuthorizationUrl(session); // getAuthorizationUrl 함수를 이용해 네이버 로그인을 위한 url 반환받음
	  model.addAttribute("naver_url", naverUrl); // 카카오 로그인 url 전달
   
      return "login";

    }
    
    /* 
	 * 타이틀: SNS 카카오 로그인 콜백 함수
	 * 파라미터 : ModelMap model, String code, HttpSession session, RedirectAttributes redirectAttributes
	 * 리턴값 : /welcome 페이지 리다이렉트
	 * 설명 : 카카오톡 url 접근 시 카카오톡에서 송신해주는 사용자 데이터를 받기 위한 콜백 함수
	 * */
	@RequestMapping(value = "/kakaologin")
	public String getKakaoSignIn(ModelMap model, @RequestParam("code") String code, HttpSession session,
			RedirectAttributes redirectAttributes)
			throws Exception {
		System.out.println("kakao callback");
		KakaoController kakaoLogin = new KakaoController(); //카카오톡 설정을 위한 Kakao 컨트롤러 객체 생성
		JsonNode userInfo = null; // 카카오톡에서 반환해주는 사용자 정보를 담기위한 JsonNode 객체 생성

		try {
			userInfo = kakaoLogin.getKakaoUserInfo(code,session); //getKakaoUserInfo함수에 사용자 접근 코드, 세션 정보를 넘겨줘서 사용자 데이터 반환
			//System.out.println(userInfo);
		} catch (NullPointerException e) {
			return "redirect:/";
		}

		//카카오톡 로그인한 사용자 정보 저장(email = 이메일, gender = 성별, nickname = 닉네임)
		//※ 카카오톡 개발자 홈페이지에서 설정에따라 다른 정보도 받아 올 수 있음.
		if(userInfo.get("kakao_account").get("email")!=null) {
			String eamil = userInfo.get("kakao_account").get("email").toString().replaceAll("\"", "");			
		}
		if(userInfo.get("kakao_account").get("gender")!=null) {
			String gender = userInfo.get("kakao_account").get("gender").toString().replaceAll("\"", "");			
		}
		if(userInfo.get("properties").get("nickname")!=null) {
			String nickname = userInfo.get("properties").get("nickname").toString().replaceAll("\"", "");			
		}

		return "welcome";
	}
	

	/* 
	 * 타이틀: SNS 네이버 로그인 콜백 함수
	 * 파라미터 : ModelMap model, String code, HttpSession session, String state,
	 * 리턴값 : /welcome 페이지 리다이렉트
	 * 설명 : 네이버  url 접근 시 네이버에서 송신해주는 사용자 데이터를 받기 위한 콜백 함수
	 * */
	@RequestMapping(value = "/naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("naver callback");
		OAuth2AccessToken oauthToken; //네이버 로그인 사용자 토큰 값 받기위한 OAuth2AccessToken 객체 생성
		NaverController naverLogin = new NaverController(); //네이버 설정을 위한 naver 컨트롤러 객체 생성
		oauthToken = naverLogin.getAccessToken(session, code, state); // getAccessToken함수에 세션, 접근 코드, 상태 값을 전달해서 토큰값 반환
		// 로그인 사용자 정보를 읽어온다.
		String apiResult = naverLogin.getUserProfile(oauthToken); //getUserProfile 함수에 토큰값을 줘서 사용자 데이터를 받아옴
		JSONParser parser = new JSONParser(); //Json 형태로 반환되는 데이터를 분석하기 위해 JSONParser 객체 생성
		Object obj = null;  //사용자 데이터를 담을 Object 객체 생성
		try {
			obj = parser.parse(apiResult); //getUserProfile 함수를 통해 반환된 사용자 데이터(json)를 파싱해 Object에 대입
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONObject jsonobj = (JSONObject) obj; //Object 형태의 사용자 데이터를 JSONObject 형태로 캐스팅
		JSONObject response = (JSONObject) jsonobj.get("response"); //response 변수에 'response'를 키값으로 보내지는 사용자 데이터를 삽입
		String nid = (String) response.get("id"); // 사용자 아이디 정보 nid 변수에 삽입
		//System.out.println(nid);
		
		return "welcome";	
	}

	/* 
	 * 타이틀: 카카오 로그아웃
	 * 파라미터 : HttpSession session
	 * 리턴값 : / 페이지 리다이렉트
	 * 설명 : 카카오 SNS 로그인 후 '로그아웃' 버튼 클릭 시 실행되는 함수
	 * */
	@RequestMapping(value="/kakao_logout")
	public String SNS_logout(HttpSession session) {
		System.out.println("kakao logout");
		KakaoController kakao = new KakaoController(); //카카오톡 설정을 위한 Kakao 컨트롤러 객체 생성
	    kakao.kakaoLogout((String)session.getAttribute("access_Token")); //웹 브라우저 세션에 저장된 SNS 접근 토큰을 kakaoLogout 함수에 줘 로그아웃 진행
	    // 세션에 저장되어있는 SNS 로그인 정보 삭제
	    // ※토큰 값은 지울 수 있지만 웹 브라우저에 카카오 아이디가 로그인 유지 중이라면, 새로운 아이디로 접근 불가능(수동으로 카카오톡 아이디 로그아웃을 진행해야함)
	    session.removeAttribute("access_Token");
	    session.removeAttribute("user_sns_token");
	    session.removeAttribute("login_check");
	    return "redirect:/";
	}
	
	/* 
	 * 타이틀: 네이버 로그아웃
	 * 파라미터 : HttpSession session
	 * 리턴값 : / 페이지 리다이렉트
	 * 설명 : 네이버 SNS 로그인 후 '로그아웃' 버튼 클릭 시 실행되는 함수
	 * */
	@RequestMapping(value = "/naver_logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String naver_logout(HttpSession session)throws IOException {
		System.out.println("naver logout");
		session.invalidate(); //invalidate 함수를 통해 웹 브라우저의 세션을 초기화해 네이버 아이디 로그아웃
		return "redirect:/";
	}

	/* 
	 * 타이틀: 403 페이지(접근 권한이 없는 페이지 접속시)
	 * 파라미터 : -
	 * 리턴값 :403.jsp 페이지 이동
	 * 설명 : 사용자가 접근권한이 없는 페이지 접근시 전시되는 페이지
	 * */
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

      ModelAndView model = new ModelAndView();
        
      //시큐리티 세션에 저장되어 있는 사용자 정보를 가져오기위한 함수
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
      if (!(auth instanceof AnonymousAuthenticationToken)) { //시큐리티 로그인이 되었을 시 실행
        UserDetails userDetail = (UserDetails) auth.getPrincipal();	// 시큐리티에 저장된 UserDetails 객체에 로그인한 사용자 정보 출력
        model.addObject("username", userDetail.getUsername()); //getUsername 함수를 통해 시큐리티 사용자 정보 객체를 통해 로그인 된 아이디(ID) 값을 반환
      }
        
      model.setViewName("403");
      return model;

    }
	
}
