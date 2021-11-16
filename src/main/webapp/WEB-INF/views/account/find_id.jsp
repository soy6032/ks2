<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

아이디찾기

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
				<div class="section-block page-title2-bg small mb-40">
					<div class="row">
						<div class="column width-12 center">
							<div class="title-container">
								<div class="title-container-inner text-black">
									<h4 class="title-medium mb-30">아이디찾기</h4>
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
								<div class="signup-form-container">
									<div class="row bord-b-1">	
										<div class="column width-2">
											<label>이메일</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="email" name="fname" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									<div class="row bord-b">	
										<div class="column width-2">
											<label>연락처</label>
										</div>	
										<div class="column width-10">
											<div class="field-wrapper">
												<input type="tel" name="fname" class="form-fname form-element rounded small" placeholder="" tabindex="1" required="">
											</div>
										</div>
									</div>
									
									<div class="row text-center">	
										<div class="column width-12">
											<input type="submit" value="아이디찾기" class="form-submit button rounded large bkg-theme bkg-hover-green color-white color-hover-white">
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