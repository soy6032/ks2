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
									<h4 class="title-medium mb-30">약관동의</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block signup-1 pt-0">
					<form class="signup-form" action="php/subscribe.php" method="get" novalidate>
						<!-- 이용약관동의 -->
						<div class="row">
							<div class="column width-12 text-left bord-b subpage-title">
								<h5 class="mb-10">이용약관 동의</h5>
							</div>
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container">
									
										<div class="row">
											<div class="field-wrapper scroll-box">
													
											</div>
											
											<div class="column width-12">
												<div class="field-wrapper pt-10 pb-10 text-left">
												 	<input id="checkbox-1" class="form-element checkbox rounded" name="checkbox-1" type="checkbox" required="">
													<label for="checkbox-1" class="checkbox-label">이용약관에 동의합니다(필수)</label>
												</div>
											</div>
										</div>
										<input type="text" name="honeypot" class="form-honeypot form-element">
										
									<div class="form-response show"></div>
								</div>
							</div>
						</div>
						<!-- 이용약관동의 -->
						
						<!-- 개인정보제공동의 -->
						<div class="row">
							<div class="column width-12 text-left bord-b subpage-title">
								<h5 class="mb-10">개인정보제공 동의</h5>
							</div>
							<div class="column width-12 center pd-t-30">
								<div class="signup-form-container">
										<div class="row">
											<div class="field-wrapper scroll-box">
													
											</div>
											
											<div class="column width-12">
												<div class="field-wrapper pt-10 pb-10 text-left">
												 	<input id="checkbox-2" class="form-element checkbox rounded" name="checkbox-1" type="checkbox" required="">
													<label for="checkbox-2" class="checkbox-label">이용약관에 동의합니다(필수)</label>
												</div>
											</div>
										</div>
										<input type="text" name="honeypot" class="form-honeypot form-element">
										<div class="column width-4 offset-4">
											<input type="button" value="다음"  onclick="location.href='joinform_p'"
											class="form-submit button rounded large bkg-theme bkg-hover-green color-white color-hover-white">
										</div>
									
									<div class="form-response show"></div>
								</div>
							</div>
						</div>
						<!-- 개인정보제공동의 -->
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