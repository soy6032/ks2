<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!-- 

공지사항 목록

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
									<h4 class="title-medium mb-30">공지사항</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block signup-1 pt-0">
					<!-- 기본정보 -->
					<div class="row mb-20">
					<fmt:parseDate var="createtime1" value="${notice_datail[0].notice_createtime }" pattern="yyyy-MM-dd"/>
					<fmt:formatDate  var="createtime2" value="${createtime1}" type="DATE" pattern="yyyy-MM-dd"/>
					<fmt:formatDate  var="createtime3" value="${createtime1}" type="DATE" pattern="dd"/>
						<div class="column width-12 center pd-t-30 board-container" >
							<div class="">
								<div class="row bord-b-1 ">
									<div class="column width-9 text-left">
										<h6>${notice_datail[0].notice_title }</h6>
									</div>	
									<div class="column width-3 text-right">
										<h6>${notice_datail[0].account_name } ${createtime2 }</h6>
									</div>
								</div>
								<div class="row bord-b-1">	
									<div class="column width-12 board-content">
										${notice_datail[0].notice_content }
									</div>	
								</div>
								<div class="row">	
									<div class="column width-12 ">
										<input type="button" value="목록으로" class="form-submit button rounded small bkg-theme bkg-hover-green color-white color-hover-white" 
										onclick="location.href='${pageContext.request.contextPath}/notice'">
									</div>	
								</div>
								
							</div>
						</div>
					</div>	
					<!-- 기본정보 -->
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