<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
	<meta charset="utf-8">
    <meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
    <meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="주식회사 케이스" />
	<meta property="og:title" content="주식회사 케이스" />
	<meta property="og:description" content="주식회사 케이스" />
	<meta name="format-detection" content="telephone=no">
	<meta name="_csrf_parameter" content="${_csrf.parameterName}" />
	<meta name="_csrf_header" content="${_csrf.headerName}" />
	<meta name="_csrf" content="${_csrf.token}" />
    <title>주식회사 케이스 </title>
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/OwlCarousel/css/owl.carousel.min.css" rel="stylesheet" />
	
	<link href="${pageContext.request.contextPath}/resources/assets/css/pace.min.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/assets/js/pace.min.js"></script>
	
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/core.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/skin.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customstyle.css" />

<style>
body{
	background: url("${pageContext.request.contextPath}/resources/images/ks/joinlogin_bg.png");
	background-size: auto;
    background-repeat: no-repeat;
    background-position: center;
}
.error {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px;
    color: #a94442;
    background-color: #f2dede;
    border-color: #ebccd1;
}

.msg {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px;
    color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
}

#login-box {
    width: 300px;
    padding: 20px;
    margin: 100px auto;
    background: #fff;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border: 1px solid #000;
}
.row, body.boxed .wrapper-inner{
	max-width: 600px;
}
.form-element.small{
	background:transparent !important;
}
button {
	width: 47%;
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>
	<div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<img src="images/logo-full.png" alt="">
									</div>
                                    <h4 class="text-center mb-4 text-white">로그인</h4>
                                    <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    	<c:if test="${not empty error}">
								            <div class="error">${error}</div>
								        </c:if>
								        <c:if test="${not empty msg}">
								            <div class="msg">${msg}</div>
								        </c:if>
                                        <div class="form-group text-white">
                                            <label class="mb-1 text-white"><strong>아이디</strong></label>
                                            <input type="text" class="form-fname form-element rounded small" name="account_id"  placeholder="아이디를 입력해주세요.">
                                        </div>
                                        <div class="form-group text-white">
                                            <label class="mb-1 text-white"><strong>비밀번호</strong></label>
                                            <input type="password" class="form-fname form-element rounded small" name="account_password" placeholder="비밀번호를 입력해주세요.">
                                        </div>
                                        <div class="text-center ">
                                        	<button type="button" class="form-submit button rounded small bkg-theme bkg-hover-green color-white color-hover-white">회원가입</button>
                                            <button type="submit" class="form-submit button rounded small bkg-theme bkg-hover-green color-white color-hover-white">LOGIN</button>
                                        </div>
                                        <div class="text-center ul-left">
                                        	<ul>
                                        		<li><a href="findid">아이디 찾기</a></li>
                                        		<li><a href="findpw">비밀번호 찾기</a></li>
                                        	</ul>
                                        </div>	
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- Required vendors -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.bundle.min.js"></script>
	<!-- Js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/timber.master.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/OwlCarousel/js/owl.carousel2.thumbs.min.js"></script>


</body>
</html>