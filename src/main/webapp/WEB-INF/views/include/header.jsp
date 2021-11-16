<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--**********************************
            Header start
        ***********************************-->
<header
	class="header with-shadow header-absolute header-fixed-on-mobile header-transparent"
	data-helper-in-threshold="300" data-helper-out-threshold="500"
	data-sticky-threshold="300" data-bkg-threshold="300"
	data-compact-threshold="300">
	<div class="header-inner">
		<div class="row nav-bar">
			<div class="column width-12 nav-bar-inner">
				<div class="logo">
					<div class="logo-inner">
						<a href="index.html"><img
							src="${pageContext.request.contextPath}/resources/images/logo-dark.png"
							alt="Kant Logo" /></a> <a href="index.html"><img
							src="${pageContext.request.contextPath}/resources/images/logo.png"
							alt="Kant Logo" /></a>
					</div>
				</div>
				<nav class="navigation nav-block secondary-navigation nav-right">
					<ul>
						<li>
							<!-- Dropdown Cart Overview --> <a href="#"
							class="nav-icon cart no-page-fade"><span
								class="cart-indication"><span class="icon-shopping-cart"></span>
									<span class="badge">3</span></span></a>
							<ul class="sub-menu custom-content cart-overview">
								<li class="cart-item"><a href="single-product.html"
									class="product-thumbnail"> <img
										src="${pageContext.request.contextPath}/resources/images/shop/cart/cart-thumb-small.jpg"
										alt="" />
								</a>
									<div class="product-details">
										<a href="single-product.html" class="product-title"> Kant
											Book Of Design </a> <span class="product-quantity">2 x</span> <span
											class="product-price"><span class="currency">$</span>15.00</span>
										<a href="#" class="product-remove icon-cancel"></a>
									</div></li>
								<li class="cart-item"><a href="single-product.html"
									class="product-thumbnail"> <img
										src="${pageContext.request.contextPath}/resources/images/shop/cart/cart-thumb-small-2.jpg"
										alt="" />
								</a>
									<div class="product-details">
										<a href="single-product.html" class="product-title"> Catch
											The Wave T </a> <span class="product-quantity">2 x</span> <span
											class="product-price"><span class="currency">$</span>45.00</span>
										<a href="#" class="product-remove icon-cancel"></a>
									</div></li>
								<li class="cart-item"><a href="single-product.html"
									class="product-thumbnail"> <img
										src="${pageContext.request.contextPath}/resources/images/shop/cart/cart-thumb-small-3.jpg"
										alt="" />
								</a>
									<div class="product-details">
										<a href="single-product.html" class="product-title">
											Vintage Leather Bag </a> <span class="product-quantity">2
											x</span> <span class="product-price"><span class="currency">$</span>17.00</span>
										<a href="#" class="product-remove icon-cancel"></a>
									</div></li>
								<li class="cart-subtotal">Sub Total <span class="amount"><span
										class="currency">$</span>77.00</span>
								</li>
								<li class="cart-actions"><a href="cart.html"
									class="view-cart mt-10">View Cart</a> <a href="checkout.html"
									class="checkout button rounded small"><span
										class="icon-check"></span> Checkout</a></li>
							</ul>
						</li>
						<li class="aux-navigation">
							<!-- Aux Navigation --> <a href="#"
							class="navigation-show side-nav-show nav-icon"> <span
								class="icon-menu"></span>
						</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
<!--**********************************
            Header end ti-comment-alt
        ***********************************-->