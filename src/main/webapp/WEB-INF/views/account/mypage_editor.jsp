<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

내정보 수정

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
				<div class="section-block page-title3-bg small mb-40">
					<div class="row">
						<div class="column width-12 center">
							<div class="title-container">
								<div class="title-container-inner text-black">
									<h4 class="title-medium mb-30">내정보 수정</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block signup-1 pt-0">
					<form class="" action="${pageContext.request.contextPath}/my_infoUpdate" method="POST">
						<div class="row bord-b"></div>
						<div class="row mb-20">
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container">
									
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>아이디</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="text" name="fname" value="${user_info[0].account_id }" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="" disabled="disabled">
											</div>
										</div>
									</div>
									
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>이메일</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="email" name="account_email" value="${user_info[0].account_email }" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>연락처</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="tel" name="account_tel" value="${user_info[0].account_tel }" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b">	
										<div class="column width-2 ">
											<label>주소</label>
										</div>	
										<div class="column width-10 ">
											<div class="field-wrapper text-left">
												<input type="text" id="sample4_postcode" placeholder="우편번호" name="account_zipcode" value="${user_info[0].account_zipcode }" readonly="readonly" class="form-fname form-element rounded small input-half">
												<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn-point-bor"><br>
												<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="account_address" value=" ${user_info[0].account_address }" readonly="readonly" class="form-fname form-element rounded small">
												<input type="text" id="" placeholder="상세주소" name="account_address_detail" value="${user_info[0].account_address_detail }" class="form-fname form-element rounded small">
											</div>
										</div>
									</div>
									
									<div class="row text-center">	
										<div class="column width-12">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<input type="hidden" value="${user_info[0].account_idx }" name="account_idx">
											<input type="submit" value="수정하기" class="form-submit button rounded large bkg-theme bkg-hover-green color-white color-hover-white">
										</div>	
									</div>
								</div>
							</div>
						</div>	
						
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
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
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