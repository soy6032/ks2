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
				<div class="section-block page-title5-bg small">
					<div class="row">
						<div class="column width-12 center">
							<div class="title-container">
								<div class="title-container-inner text-black">
									<h4 class="title-medium mb-30">회사소개</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Intro Title End -->

				<!-- Form Style Default -->
				<section class="section-block company pt-0">
					<div class="row">
						<div class="column width-12">
							<div class="tabs style-2 center">
								<ul class="tab-nav">
									<li class="active">
										<a href="#tabs-4-pane-1">인사말</a>
									</li>
									<li>
										<a href="#tabs-4-pane-2">연혁</a>
									</li>
									<li>
										<a href="#tabs-4-pane-3">비젼</a>
									</li>
								</ul>
								<div class="tab-panes text-left">
									<div>
									</div>
									<div id="tabs-4-pane-1" class="active animate animate-in">
										<div class="tab-content">
											<p class="lead">Much like accordions, tabs are a great way for presenting information in a limited amount of space.</p>
											<p>안녕하십니까?
											케이에스 홈페이지에 방문해주신 여러분께 진심으로 감사의 말씀 드립니다.
											인터넷이라는 한정된 공간이지만 이곳을 통해 고객과 소통하고 공감하는 장을 마련하게 되어 감회가 새롭습니다.
											이스턴웰스는 􏚲􏚺􏚹􏚵년 자판기 시장의 혁신이라는 슬로건으로 Vending 업을 시작한 이후
											새로운 아이템 발굴 및 개발, 운영, 서비스가 삼위일체가 되어 최상의 품질, 완벽한 위생, 최고의 서비스를
											제공한다는 영업방침으로 늘 고객과 함께하여 왔습니다.
											이는 이스턴웰스가 기업활동을 지속하는 한 변치 않는 절대적인 가치이기도 합니다.
											또한 업계 유일무이한 자판기 전용 통합 시스템을 구축하여 모바일을 통한 실시간 운영 업무를 가능하게 하였으며,
											앞으로도 AI(인공지능) 기반의 최첨단 운영 플랫폼을 구축하여 자판기 업에 있어서 꿈이 아닌 현실로 가능하게 하기 위해 준비 중에 있습니다.
											앞으로도 저희 이스턴웰스 임직원들은 끊임없는 연구개발로 유통시장에 새로운 패러다임을 제공하여
											고객 여러분들과 함께 성장하는 신뢰받는 기업이 되도록 매진하겠습니다.
											또한 고객 여러분의 목소리에 귀를 기울여 여러분들의 불편사항을 신속히 파악하고 즉시 개선하는 시스템을 구축하여
											고객 만족을 넘어 고객 감동을 실현하는 최고의 서비스를 약속드립니다.
											감사합니다</p>
										</div>
									</div>
									<div id="tabs-4-pane-2" class="history-bg">
										<div class="tab-content ">
											<jsp:include page="history.jsp"/>
										</div>
									</div>
									<div id="tabs-4-pane-3">
										<div class="tab-content">
											<img src="${pageContext.request.contextPath}/resources/images/ks/vision.png" alt="" id="visionimg"/>
										</div>
									</div>
								</div>
							</div>
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
	
	