<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="include/head.jsp"/>
<jsp:include page="include/header_nav.jsp"/>

<form action="${pageContext.request.contextPath}/estimateInsert?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="text" name="product_idx"  placeholder="제품idx">
	<input type="text" name="estimate_productpurpose"  placeholder="제품용도">
	<input type="text" name="estimate_productsize"  placeholder="제품사이즈">
	<input type="text" name="estimate_duedate"  placeholder="납기일">
	<input type="text" name="estimate_budget1"  placeholder="예산범위">
	<input type="text" name="estimate_budget2"  placeholder="예산범위">
	<input type="file" name="file_file">
	<textarea rows="" cols="" name="estimate_content">${productDetail[0].product_content }</textarea>
	<input type="hidden" value="${productDetail[0].product_idx }" name="product_idx">
	<input type="submit" class="" value="전송">
</form>
	
<jsp:include page="include/footer_setting.jsp"/>