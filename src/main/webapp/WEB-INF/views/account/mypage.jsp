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
					<form class="signup-form" action="#" method="post" novalidate>
						<div class="row bord-b"></div>
						<div class="row mb-20">
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container ">
									
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>아이디</label>
										</div>	
										<div class="column width-10 text-left">
											<div class="field-wrapper">
												${user_info[0].account_id }
											</div>
										</div>
									</div>
									
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>이메일</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper text-left">
												${user_info[0].account_email }
											</div>
										</div>
									</div>
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>연락처</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper text-left">
												${user_info[0].account_tel }
											</div>
										</div>
									</div>
									<div class="row bord-b">	
										<div class="column width-2 ">
											<label>주소</label>
										</div>	
										<div class="column width-10 text-left">
											<div class="field-wrapper text-left">
												(${user_info[0].account_zipcode }) ${user_info[0].account_address }, ${user_info[0].account_address_detail }
											</div>
										</div>
									</div>
									
									<div class="row text-center">	
										<div class="column width-12">
											<input type="button" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/notice'" class="form-submit button rounded large bkg-theme bkg-hover-green color-white color-hover-white">
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
	
