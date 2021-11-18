<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="include/head.jsp"/>
<style>
body {
    margin: 0;
    padding: 0;
    user-select: none;
}
#cont {
    width: 800px;
    margin: auto;
}

#entry {
    text-align: center;
    text-decoration: underline;
    background-color: #fff;
    color: #000;
    font-size: 48px;
    padding: 5px;
    border: 1px solid #fff;
}
#entry:hover {
    cursor: pointer;
    background-color: #000;
    color: #fff;
}
#disp {
    font-family: monospace;
    font-size: 18px;
}
#cnvs {
	margin: 0 auto;
	width:800px;
    float: left;
    cursor: -webkit-grabbing;
}
#settings {
    height: 100%;
}
input[type='range'] {
    display: block;
    margin: auto;
}
#sliders {
    text-align: center;
}
canvas { width: 50% !important; height: 50% !important; }
</style>
<jsp:include page="include/header_nav.jsp"/>
<!-- <div id='cont'>
</div>
<div id='disp'>
    <canvas id='cnvs'></canvas>
    <div id='settings'>
            <a id='dwnld_a'>test</a>
    </div>
</div> -->


<hr>
    <!-- Hidden file input -->
        <input type="file" id="files" name="files[]" />

        <!-- Drag and drop target -->
        <div id="drop_zone">Drop a .stl or .dae file directly here</div>

        <!-- Checkbox to enable/disable anaglyph view -->
        <div>
            <input type="hidden" id="checkAnaglyph" name="checkAnaglyph" value="Anaglyph view" />
            <input type="hidden" id="checkBBox" name="checkBBox" value="View Bounding Box" />
        </div>

        <script src="${pageContext.request.contextPath}/resources/js/fonts/optimer_regular.typeface.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/Detector.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/loaders/STLLoader.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/loaders/ColladaLoader.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/stats.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/controls/OrbitControls.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/org/yombo/visor3d/shaders.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/org/yombo/visor3d/main.js"></script>
<hr>





<form action="${pageContext.request.contextPath}/estimateInsert?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="text" name="product_idx"  placeholder="제품idx">
	<input type="text" name="estimate_productpurpose"  placeholder="제품용도">
	<input type="text" name="estimate_productsize"  placeholder="제품사이즈">
	<input type="text" name="estimate_duedate"  placeholder="납기일">
	<input type="text" name="estimate_budget1"  placeholder="예산범위">
	<input type="text" name="estimate_budget2"  placeholder="예산범위">
	
	<input id='inpt' type='file' accept='.stl' value="https://coratest.kr/imagefile/ks/test-binary.stl">
	<input type="hidden" value="https://coratest.kr/imagefile/ks/test-binary.stl" id="inpt2">
	<textarea rows="" cols="" name="estimate_content"></textarea>
	<input type="submit" class="" value="전송">
</form>
견적히스토리
<form action="${pageContext.request.contextPath}/estimatehistoryInsert?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="text" name="estimate_idx"  placeholder="견적idx">
	<input type="file" name="file_file">
	<input type="file" name="file_img">
	<textarea rows="" cols="" name="estimatehistory_content"></textarea>
	<input type="submit" class="" value="전송">
</form>
<jsp:include page="include/footer_setting.jsp"/>