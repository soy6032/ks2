<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

	회사소개 > 인사말

 -->
<jsp:include page="../include/head.jsp"/>
<jsp:include page="../include/header_nav.jsp"/>

<style>
.row{margin:0 auto !important}
div#example_length{text-align: left;}
div.dataTables_wrapper div.dataTables_info{text-align: left;}
</style>

	<div class="wrapper">
		<div class="wrapper-inner">
			
			<!-- Header -->
			<jsp:include page="../include/header.jsp"/>
			<!-- Header End -->

			<!-- Content -->
			<div class="content clearfix">

				<!-- Intro Title -->
				<div class="section-block page-title6-bg small">
					<div class="row">
						<div class="column width-12 center">
							<div class="title-container">
								<div class="title-container-inner text-black">
									<h4 class="title-medium mb-30">오시는길</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block company pt-10">
					<div class="row">
						<div class="column width-12 mb-20 ">
							<img src="${pageContext.request.contextPath}/resources/images/ks/vision.png" alt="" id="visionimg"/>
						</div>
					</div>
					
					<div class="row">
						<div class="column width-10">
							<div class="feature-column medium left horizon" data-animate-in="preset:slideInRightShort;duration:1000ms;delay:400ms;" data-threshold="1" style="backface-visibility: hidden; transition: -webkit-transform 1000ms cubic-bezier(0.11, 0.69, 0.66, 1.01) 400ms, opacity; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg) rotateZ(0deg) scale3d(1, 1, 1); opacity: 1; visibility: visible; transform-origin: 50% 50% 0px;">
								<span class="feature-icon color-theme"><img src="${pageContext.request.contextPath}/resources/images/ks/location.png" class="iconimg"></span>
								<div class="feature-text">
									<span>부산광역시 00구 000로 000-000</span>
								</div>
							</div>
							<div class="feature-column medium left horizon" data-animate-in="preset:slideInRightShort;duration:1000ms;delay:400ms;" data-threshold="1" style="backface-visibility: hidden; transition: -webkit-transform 1000ms cubic-bezier(0.11, 0.69, 0.66, 1.01) 400ms, opacity; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg) rotateZ(0deg) scale3d(1, 1, 1); opacity: 1; visibility: visible; transform-origin: 50% 50% 0px;">
								<span class="feature-icon color-theme"><img src="${pageContext.request.contextPath}/resources/images/ks/telephone.png" class="iconimg"></span>
								<div class="feature-text">
									<span>000-0000-0000</span>
								</div>
							</div>
							<div class="feature-column medium left horizon" data-animate-in="preset:slideInRightShort;duration:1000ms;delay:400ms;" data-threshold="1" style="backface-visibility: hidden; transition: -webkit-transform 1000ms cubic-bezier(0.11, 0.69, 0.66, 1.01) 400ms, opacity; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg) rotateZ(0deg) scale3d(1, 1, 1); opacity: 1; visibility: visible; transform-origin: 50% 50% 0px;">
								<span class="feature-icon color-theme"><img src="${pageContext.request.contextPath}/resources/images/ks/time.png" class="iconimg"></span>
								<div class="feature-text">
									<span><b>Day</b>09:00 ~ <b>Lunch</b>12:00~13:00</span>
								</div>
							</div>
						</div>
						<div class="column width-2">
							<img src="${pageContext.request.contextPath}/resources/images/ks/vision.png" alt="" id="visionimg"/>
						</div>
					</div>
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

	var PagingHelper = {
		'data' : {
			 currentPage :1// 현재페이지
			//,startPage : 1	// 시작페이지
			,pageSize : 5		// 페이지 사이즈 (화면 출력 페이지 수)
			,maxListCount : 10	// (보여질)최대 리스트 수 (한페이지 출력될 항목 갯수)
			,startnum : 1		// 시작 글번호
			,lastnum : 10		// 마지막 글번호
			,totalCnt : 0		// 전체 글의 갯수.
			,totalPageCnt : 0	// 전체 페이지 수	
		},
		'setOption' : function(opt){
			if( typeof opt != 'object' ) return;
			for (key in opt ) {
				if(key in this.data) {
					this.data[key] = opt[key]; //data에 입력받은 설정값 할당.
				}
			}
		},
		'pagingHtml' : function(pTotalCnt){
			
			var _ = this;
			
			_.data['totalCnt'] = pTotalCnt?pTotalCnt:_.data['totalCnt'];		
			
			if (_.data['totalCnt'] == 0) {
				return "";
			}
			//총페이지수 구하기 : 페이지 출력 범위 (1|2|3|4|5)
			_.data.totalPageCnt = Math.ceil(_.data.totalCnt / _.data.maxListCount); 			
			
			//현재 블럭 구하기 
			var n_block = Math.ceil(_.data.currentPage / _.data.pageSize); 
					
			//페이징의 시작페이지와 끝페이지 구하기
			var s_page = (n_block - 1) * _.data.pageSize + 1; // 현재블럭의 시작 페이지
			var e_page = n_block * _.data.pageSize; // 현재블럭의 끝 페이지
				
			var sb='';
			var sbTemp ='';
			
			//console.log(_.data);
			//console.log(n_block+"/"+s_page+"/"+e_page);
      		
			// 블럭의 페이지 목록 및 현재페이지 강조
			for (var j = s_page; j <= e_page; j++) {				
				if (j > _.data.totalPageCnt ) break; 						
				if(j == _.data.currentPage) {
					sbTemp += "<li class='selected'>"+j+"</li>";
				} else {
					sbTemp += "<li onclick='PagingHelper.gotoPage("+j+");'>"+j+"</li>";		
				}
			}			

			// 이전페이지 버튼
			sb = "<ul>"
			if(_.data.currentPage > s_page || _.data.totalCnt > _.data.maxListCount && s_page > 1){
				sb += "<li class='first' onclick='PagingHelper.gotoPage(1);'><<</li >"
				sb += "<li class='previous' onclick='PagingHelper.gotoPage(" + (_.data.currentPage - 1) + ");'><</li>"	
			}
			
			// 현재블럭의 페이지 목록
			sb += sbTemp
			
			// 다음페이지 버튼
			if(_.data.currentPage < _.data.totalPageCnt ){
				sb += "<li class='next' onclick='PagingHelper.gotoPage(" + (_.data.currentPage + 1) + ");'>></li>"
				sb += "<li class='last' onclick='PagingHelper.gotoPage(" + (_.data.totalPageCnt) +");'>>></li >"			
			}
			sb += "</ul>";
						
			return sb;
		},
		"makeNum":function(className, content ){	 //필요없음.	
			return "<li class='"+className+"''>["+content+"]</li>";
		},
		'setStartnumEndnum' : function() {
			// 시작 글번호
			this.data.startnum = (this.data.currentPage -1) * this.data.maxListCount + 1;

			// 마지막 글번호
			var tmp = this.data.currentPage * this.data.maxListCount;
			this.data.lastnum = (tmp > this.data.totalCnt?this.data.totalCnt:tmp);
		},
		'gotoPage':function(pageNum){
			console.log(pageNum);
						
			this.data.currentPage = pageNum; //입력받은 페이지번호를 현재페이지로 설정
			this.setStartnumEndnum();	//입력받은 페이지의 startnum과 endnum구하기

			//콘솔 출력 (삭제)
			console.log(this.data.currentPage+"/"+this.data.startnum +"/"+this.data.lastnum);
			alert(this.data.currentPage+"/"+this.data.startnum +"/"+this.data.lastnum);
			
			//리스트 불러오는 ajax호출
			//////////////////////////
			$("#paging").html(this.pagingHtml()); 
		}
	}

/////////////////////////////////////////////////////////////////////
//테스트용 : 임시로 총레코드수 설정.
////////////////////////////////////////////////////////////////////

//PagingHelper.data.totalCnt = 1001;

$(document).ready(function() {
	$("#paging").append(PagingHelper.pagingHtml(1001)); 
	//해당 영역에 페이징 문자열 출력 
	//class에대한 스타일 정의 필요.
});
	</script>
	
	