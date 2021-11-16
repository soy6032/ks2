<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="include/head.jsp"/>
<jsp:include page="include/header_nav.jsp"/>
	<div class="wrapper">
		<div class="wrapper-inner">
			
			<!-- Header -->
			<jsp:include page="include/header.jsp"/>
			<!-- Header End -->

			<!-- Content -->
			<div class="content clearfix">

				<!-- Fullscreen Slider Section -->
				<!--start slider section-->
				<section class="slider-section">
					<div class="first-slider">
						<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
							<ol class="carousel-indicators">
								<li data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"></li>
								<li data-bs-target="#carouselExampleDark" data-bs-slide-to="1"></li>
								<li data-bs-target="#carouselExampleDark" data-bs-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active bg-dark-gery">
									<div class="row d-flex align-items-center">
										<div class="col d-none d-lg-flex justify-content-center">
											<div class="">
												<h3 class="h3 fw-light"></h3>
												<h1 class="h1">2D/3D 1:1 맞춤형 전문 제조 서비스</h1>
												<p class="pb-3">시제품 제작, 모델링 (주)KS에서 시작하세요 !</p>
												<div class=""> <a class="btn btn-dark btn-ecomm" href="javascript:;">Shop Now <i class='bx bx-chevron-right'></i></a>
												</div>
											</div>
										</div>
										<div class="col">
											<img src="assets/images/slider/04.png" class="img-fluid" alt="...">
										</div>
									</div>
								</div>
								<div class="carousel-item bg-dark-gery">
									<div class="row d-flex align-items-center">
										<div class="col d-none d-lg-flex justify-content-center">
											<div class="">
												<h3 class="h3 fw-light">Hurry up! Limited time offer.</h3>
												<h1 class="h1">Women Sportswear Sale</h1>
												<p class="pb-3">Sneakers, Keds, Sweatshirts, Hoodies &amp; much more...</p>
												<div class=""> <a class="btn btn-dark btn-ecomm" href="javascript:;">Shop Now <i class='bx bx-chevron-right'></i></a>
												</div>
											</div>
										</div>
										<div class="col">
											<img src="assets/images/slider/05.png" class="img-fluid" alt="...">
										</div>
									</div>
								</div>
								<div class="carousel-item bg-dark-gery">
									<div class="row d-flex align-items-center">
										<div class="col d-none d-lg-flex justify-content-center">
											<div class="">
												<h3 class="h3 fw-light">Complete your look with</h3>
												<h1 class="h1">New Men's Accessories</h1>
												<p class="pb-3">Hats &amp; Caps, Sunglasses, Bags &amp; much more...</p>
												<div class=""> <a class="btn btn-dark btn-ecomm" href="javascript:;">Shop Now <i class='bx bx-chevron-right'></i></a>
												</div>
											</div>
										</div>
										<div class="col">
											<img src="assets/images/slider/03.png" class="img-fluid" alt="...">
										</div>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleDark" role="button" data-bs-slide="prev">	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleDark" role="button" data-bs-slide="next">	<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</a>
						</div>
					</div>
				</section>
				<!-- Fullscreen Slider Section End -->

				<!-- Basic Feature Columns -->
				<div id="about" class="section-block">
					<div class="row flex">
						<div class="column width-10 offset-1 center">
							<p class="lead text-xlarge weight-regular mb-100">We've built a product that makes your startup look professional, elegant and focused. Start building a beautiful site today.</p>
						</div>
						<div class="column width-10 offset-1 center">
							<div class="row flex">
								<div class="column width-6">
									<div class="feature-column horizon" data-animate-in="preset:slideInRightShort;duration:1000ms;" data-threshold="1">
										<div class="feature-text">
											<span class="title-xlarge font-alt-1 opacity-02">70+</span>
											<h6>Carfully Crafted Pages</h6>
											<p>Kant comes with a wide variety of carfully crafted pages that are ready-to-use and built to save you time. Kant includes product, service &amp; portfolio layouts, e-commerce layouts, utility layouts, a ton of components and so much more.</p>
										</div>
									</div>
								</div>
								<div class="column width-6">
									<div class="feature-column horizon" data-animate-in="preset:slideInRightShort;duration:1000ms;delay:200ms;" data-threshold="1">
										<div class="feature-text">
											<span class="title-xlarge font-alt-1 opacity-02">100+</span>
											<h6>Purpose-built Blocks</h6>
											<p>With over 100 purpose-built content blocks building a site is both fast and easy. Move content blocks around to get new professional looking layouts. The possibilities are endless; create a beautiful site today.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Basic Feature Columns End -->

				<!-- Hero 2 Section -->
				<div class="section-block hero-2 hero-2-intro-1">
					<div class="media-overlay bkg-black opacity-05"></div>
					<div class="row">
						<div class="column width-8 offset-2">
							<div class="hero-content">
								<div class="hero-content-inner center">
									<div class="horizon color-white" data-animate-in="preset:slideInDownShort;duration:1000ms;">
										<p class="text-xlarge weight-bold mb-20">Build a site your users will remember</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Hero 2 Section End -->

				<!-- Demo Grid -->
				<div id="demos" class="section-block no-padding-bottom bkg-grey-ultralight">
					<div class="row">
						<div class="column width-12">
							<h3 class="mb-60">Homepage Layouts</h3>
						</div>
					</div>
				</div>
				<div id="demo-grid" class="section-block grid-container fade-in-progressively no-padding-top bkg-grey-ultralight" data-layout-mode="fitRows" data-animate-filter-duration="700" data-animate-resize data-animate-resize-duration="0">
					<div class="row">
						<div class="column width-12">
							<div class="row grid content-grid-3">
								<div class="grid-item grid-sizer">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-agency.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/agency.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Agency</h5>
										<span class="project-description">with folio, recent posts, vimeo bkg video</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-agency-alternative.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/agency-2.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Agency Alternative <span class="label rounded bkg-theme color-white pull-right">New</span></h5>
										<span class="project-description">with folio, pricing tables &amp; contact form</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-login.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/login.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Client Login <span class="label rounded bkg-theme color-white pull-right">New</span></h5>
										<span class="project-description">with split hero slider and login form</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-app.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/app.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Mobile Application</h5>
										<span class="project-description">with parallax, feature slider</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-web-app.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/app-web.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Web Application <span class="label rounded bkg-theme color-white pull-right">New</span></h5>
										<span class="project-description">with signup/sign in form</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-ecommerce.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/ecommerce.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Shop</h5>
										<span class="project-description">with parallax, product grid, hero slider</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-product-1.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/product-one.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Product Simple</h5>
										<span class="project-description">with parallax, product presentation, signup</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-product-2.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/product-two.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Product Software</h5>
										<span class="project-description">with feature section, testimonial slider</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-product-3.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/product-three.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Service</h5>
										<span class="project-description">with parallax, youtube bkg video, signup</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-personal.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/personal.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Personal</h5>
										<span class="project-description">with parallax, portfolio grid</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-startup.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/startup.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Startup</h5>
										<span class="project-description">with parallax, split hero section, pricing tables</span>
									</div>
								</div>
								<div class="grid-item">
									<div class="thumbnail overlay-fade-in" data-hover-easing="easeInOut" data-hover-speed="700" data-hover-bkg-color="#000000" data-hover-bkg-opacity="0.6">
										<a class="overlay-link" href="index-hero-slider.html">
											<img src="${pageContext.request.contextPath}/resources/images/portfolio/grid/large-margins/split-hero.jpg" alt=""/>
											<span class="overlay-info">
												<span>
													<span>
														<span class="project-title"><small>View Demo</small></span>
													</span>
												</span>
											</span>
										</a>
									</div>
									<div class="item-description with-background">
										<h5 class="project-title">Split Hero Intro</h5>
										<span class="project-description">with fullscreen split hero slider</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Demo Grid End -->

				<!-- Feature Column Section -->
				<div id="discover" class="section-block pb-30">
					<div class="row">
						<div class="column width-8 offset-2 center">
							<h2 class="mb-30">What's Included</h2>
							<p class="lead weight-regular mb-80">Kant is a complete design toolkit that gives you the tools you need to create a unique and professional looking website for you or your client.</p>
						</div>
					</div>
					<div class="row flex">
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium mb-50">
									<span class="feature-icon icon-documents color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>Multiple Layouts</h5>
										<p>Kant comes with a wide range of page layouts such as homepage layouts, portfolios, project pages, e-commerce pages, utility pages and so much more. Choose the ones you need, edit and upload.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium">
									<span class="feature-icon icon-add-to-list color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>20+ Components</h5>
										<p>Make any design stand out by using a combination of the 20+ components that come with Kant. Accordions, tabs, buttons, progress bars, maps, pricing tables, counters and a whole lot more.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium mb-50">
									<span class="feature-icon icon-power-plug color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>Premium Plugins</h5>
										<p>As with all our templates, Kant comes with 8 premium in-house developed plugins such as sliders, parallax sections, fullscreen sections, and counters. When there is an update you'll be sure to get it.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium">
									<span class="feature-icon icon-document-landscape color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>Purpose-built blocks</h5>
										<p>Kant, like all our templates, is built using a block based, responsive framework that makes designing easier. With more than 100+ blocks at your disposal, not only will you save time, but you can create new layouts with ease.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium mb-50">
									<span class="feature-icon icon-email color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>Awesome Forms</h5>
										<p>Build simple or complex forms on the fly. Add new fields, select boxes, checkboxes and/or radio buttons to any contact form without editing JS or PHP. Our subscribe forms seamlessly integrate with MailChimp.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="column width-4">
							<div class="box small bkg-white">
								<div class="feature-column medium">
									<span class="feature-icon icon-grid color-theme opacity-04"></span>
									<div class="feature-text">
										<h4>Isotope</h5>
										<p>Kant includes the popular isotope grid and sorting library which allows you to create amazing masonry grids on the fly. Choose between large, small or no margin grids, animation duration, sorting duration and more.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Feature Column Section End -->

				<!-- Divider -->
				<div class="section-block pt-0 pb-0">
					<div class="row">
						<div class="column width-12">
							<hr>
						</div>
					</div>
				</div>
				<!-- Divider End -->

				<!-- Support Content -->
				<div class="section-block pt-60 pb-0">
					<div class="row">
						<div class="column width-8 offset-2 center">
							<div class="feature-column">
								<h3>Have questions or need support? Our team is here to help!</h3>
								<p>With every purchase of a ThemeMountain product you get 6 months premium support! We provide our customers with friendly, timely, and carefully detailed support. For any pre-sale questions, please contact us through our profile.</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="column width-10 offset-1">
							<div class="thumbnail mb-0">
								<img src="${pageContext.request.contextPath}/resources/images/generic/hero-product-3.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<!-- Support Content End -->

				<!-- Call to Action Section 2 -->
				<div class="section-block call-to-action-2 bkg-grey-ultralight pt-70 pb-70">
					<div class="row flex">
						<div class="column width-12 center v-align-middle">
							<div class="call-to-action-content">
								<div class="call-to-action-content-inner horizon" data-animate-in="preset:slideInRightShort;">
									<p class="pt-5 mb-0 mb-mobile-20 inline weight-semi-bold color-theme">Get a copy of Kant and start creating today</p>
									<a data-lightbox-animation="fadeIn" href="#" class="button rounded bkg-theme bkg-hover-green color-white color-hover-white">Purchase Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Call to Action Section 2 End -->

			</div>
			<!-- Content End -->

			<!-- Footer -->
			<jsp:include page="include/footer.jsp"/>		
			<!-- Footer End -->

		</div>
	</div>

	<jsp:include page="include/footer_setting.jsp"/>