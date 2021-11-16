<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

회원가입 step 1 : 회원유형 선택하기

 -->
<jsp:include page="../include/head.jsp"/>
<jsp:include page="../include/header_nav.jsp"/>
	<div class="wrapper">
		<div class="wrapper-inner">
			
			<!-- Header -->
			<jsp:include page="../include/header.jsp"/>
			<!-- Header End -->

			<!-- Content -->
			<div class="content clearfix join-step1-bg">
				
				<!-- Basic Feature Columns End -->
				<!-- Grid -->
				<div id="join-step1" class="section-block no-padding-bottom bkg-grey-ultralight">
					<div class="row text-center mb-20">
						<div class="column width-12">
							<h3 class=" text-white">회원가입</h3>
							<span class="text-white">회원가입 유형을 선택해 주세요.</span>
						</div>
					</div>
				</div>
				<div id="join-step1-grid" class="text-center section-block grid-container fade-in-progressively no-padding-top bkg-grey-ultralight" data-layout-mode="fitRows" data-animate-filter-duration="700" data-animate-resize data-animate-resize-duration="0">
					<div class="row">
						<div class="column width-12">
							<div class="row grid content-grid-2">
								<div class="grid-item grid-sizer">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="joinagree2">
											<img src="${pageContext.request.contextPath}/resources/images/ks/join_06.png" alt="" id="join-type-1"/>
										</a>
									</div>
									<div class="item-description ">
										<h5 class="project-title text-white">기업으로 가입하기</h5>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="joinagree">
											<img src="${pageContext.request.contextPath}/resources/images/ks/join_06.png" alt="" id="join-type-2"/>
											<!-- 
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
											 -->
										</a>
									</div>
									<div class="item-description ">
										<h5 class="project-title text-white">개인으로 개발하기</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Grid End -->

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