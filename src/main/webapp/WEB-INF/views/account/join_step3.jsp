<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

회원가입 step 2 : 약관동의

 -->
<jsp:include page="../include/head.jsp"/>
<jsp:include page="../include/header_nav.jsp"/>
	<div class="wrapper">
		<div class="wrapper-inner">
			
			<!-- Header -->
			<jsp:include page="../include/header.jsp"/>
			<!-- Header End -->

			<!-- Content -->
			<div class="content clearfix">

				<!-- Intro Title -->
				<div class="section-block page-title1-bg small mb-40">
					<div class="row">
						<div class="column width-12 center">
							<div class="title-container">
								<div class="title-container-inner text-black">
									<h4 class="title-medium mb-30">기업으로 가입하기</h4>
									<span>고객과 고객의 고객까지 <b>만족</b>시키는 KS, <b>감각적인 움직임</b>을 약속합니다.</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block signup-1 pt-0">
					<form onsubmit="return validate();" action="companysave" method="POST" novalidate>
						<!-- 토큰 삽입 -->					
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<!-- 기본정보 -->
						<div class="row mb-20">
							<div class="column width-12 text-left bord-b subpage-title">
								<h5 class="mb-10">기본정보</h5>
							</div>
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container">
									<div class="row bord-b-1">
										<div class="column width-2 ">
											<label>이름</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="account_name" name="account_name" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">
										<div class="column width-2 ">
											<label>아이디</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="account_id"  name="account_id" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>비밀번호</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="password" id="account_password"  name="account_password" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>비밀번호확인</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="password" id="account_password2"  name="account_password2" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>이메일</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="email" id="account_email"  name="account_email" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>연락처</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="tel" id="account_tel"  name="account_tel" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b">	
										<div class="column width-2 ">
											<label>주소</label>
										</div>	
										<div class="column width-10 ">
											<div class="field-wrapper text-left">
												<input type="text" name="account_zipcode" id="account_zipcode" placeholder="우편번호" class="form-fname form-element rounded small input-half">
												<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn-point-bor"><br>
												<input type="text" name="account_address" id="account_address" placeholder="도로명주소" class="form-fname form-element rounded small">
												<input type="text" name="account_address_detail" id="account_address_detail" placeholder="상세주소" class="form-fname form-element rounded small">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>	
						<!-- 기본정보 -->
						
						
						
						<!-- 회사정보 -->
						<div class="row">
							<div class="column width-12 text-left bord-b subpage-title">
								<h5 class="mb-10">회사정보</h5>
							</div>
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container">
									<div class="row bord-b-1">
										<div class="column width-2 ">
											<label>담당자명</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="company_manager" name="company_manager" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>회사명 국문</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="company_name"  name="company_name" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>회사구분</label>
										</div>	
										
										<div class="column width-10">
											<div class="field-wrapper text-left">
												<input id="radio-1" class="form-element radio" name="company_division" value="0" type="radio" checked="">
												<label for="radio-1" class="radio-label">개인</label>
												<input id="radio-2" class="form-element radio" name="company_division" value="1" type="radio">
												<label for="radio-2" class="radio-label">법인</label>
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>사업자등록번호</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="email" id="company_businessnum" name="company_businessnum" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>업종</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="company_sectors"  name="company_sectors" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>대표자</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="company_ceo"  name="company_ceo" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>FAX번호</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" id="company_fax"  name="company_fax" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>주요취급품목</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="tel" id="company_mainiteam"  name="company_mainiteam" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									
									<div class="row text-center">	
										<div class="column width-12">
											<input type="submit" value="회원가입" class="form-submit button rounded large bkg-theme bkg-hover-green color-white color-hover-white">
										</div>	
									</div>
									

								</div>
							</div>
						</div>	
						<!-- 회사정보 -->
						
						
					</form>
				</section>
				<!-- Form Style Default End -->

			</div>
			<!-- Content End -->

			<!-- Footer -->
			<jsp:include page="../include/footer.jsp"/>		
			<!-- Footer End -->

		</div>
	</div>

	<jsp:include page="../include/footer_setting.jsp"/>
	
	
	<script>
	$( document ).ready(function() {
	    
		/*기업으로 선택할 때 이미지 변경 */
		$("#join-type-1").mouseover(function() {
		     $(this).attr("src","${pageContext.request.contextPath}/resources/images/ks/join_07.png");
		});
		$("#join-type-1").mouseout(function() {
			 $(this).attr("src","${pageContext.request.contextPath}/resources/images/ks/join_06.png");
		});
		
		
		/*개인으로 선택할 때 이미지 변경 */
		$("#join-type-2").mouseover(function() {
		     $(this).attr("src","${pageContext.request.contextPath}/resources/images/ks/join_07.png");
		});
		$("#join-type-2").mouseout(function() {
			 $(this).attr("src","${pageContext.request.contextPath}/resources/images/ks/join_06.png");
		});


	});
	</script>
	
	<!-- 주소 api -->
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	   function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('account_zipcode').value = data.zonecode;
	                document.getElementById("account_address").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	</script>
	<!-- 주소 api -->
	
	<script>
	 function validate() {
         var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
         var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
         // 이메일이 적합한지 검사할 정규식

         //회원가입시 Form에 입력 되는 변수
         var account_id = document.getElementById("account_id");
         var account_password = document.getElementById("account_password");
         var account_email = document.getElementById("account_email");
         var account_name = document.getElementById("account_name");
         var account_tel = document.getElementById("account_tel"); 
         //사용자 주소 정보
         var account_zipcode = document.getElementById("account_zipcode"); 
         var account_address = document.getElementById("account_address"); 
         var account_address_detail = document.getElementById("account_address_detail"); 
         //기업 정보
		 var company_name = document.getElementById("company_name");
         var company_manager = document.getElementById("company_manager");
         var company_businessnum = document.getElementById("company_businessnum");
         var company_sectors = document.getElementById("company_sectors");
         var company_ceo = document.getElementById("company_ceo"); 
         var company_mainiteam = document.getElementById("company_mainiteam");
         
         if(account_id.value=="") {
             alert("아이디를 입력해주세요.");
             account_id.focus();
             return false;
         }  
         if(account_password.value=="") {
             alert("비밀번호를 입력해주세요.");
             account_password.focus();
             return false;
         } 
         if (account_password.value != account_password2.value) {
 			alert("비밀번호가 일치하지 않습니다");
 			return false;
 		  }
         if(account_email.value=="") {
             alert("이메일을 입력해주세요.");
             account_email.focus();
             return false;
         } 
         if(account_name.value=="") {
             alert("이름을 입력해주세요.");
             account_name.focus();
             return false;
         } 
         if(account_tel.value=="") {
             alert("번호를 입력해주세요.");
             account_tel.focus();
             return false;
         } 
         if(account_zipcode.value=="") {
             alert("우편번호를 입력해주세요.");
             account_zipcode.focus();
             return false;
         } 
         if(account_address.value=="") {
             alert("주소를 입력해주세요.");
             account_zipcode.focus();
             return false;
         }
         if(account_address_detail.value=="") {
             alert("상세주소를 입력해주세요.");
             account_address_detail.focus();
             return false;
         }
         //기업 유효성 검사.
         if(company_manager.value=="") {
             alert("기업 관리자 이름을 입력해주세요.");
             company_manager.focus();
             return false;
         }
         if(company_name.value=="") {
             alert("기업 이름을 입력해주세요.");
             company_name.focus();
             return false;
         }  
         if(company_businessnum.value=="") {
             alert("사업자 번호를 입력해주세요.");
             company_businessnum.focus();
             return false;
         }
         if(company_sectors.value=="") {
             alert("업종을 입력해주세요.");
             company_sectors.focus();
             return false;
         }
         if(company_ceo.value=="") {
             alert("대표자 명을 입력해주세요.");
             company_ceo.focus();
             return false;
         }
         if(company_mainiteam.value=="") {
             alert("주요 품목을 입력해주세요.");
             company_mainiteam.focus();
             return false;
         }
         alert("등록이 완료되었습니다.");
         return true;
     }
	</script>
	