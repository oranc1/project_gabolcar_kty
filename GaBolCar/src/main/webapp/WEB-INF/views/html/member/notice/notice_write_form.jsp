<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/member/notice/notice_write_form.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="styleSheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="styleSheet">
	
	<script src="${pageContext.request.contextPath }/resources/js/inc/jquery-3.7.0.js"></script>
<title>공지사항</title>
</head>
<body>
	<header>
		<jsp:include page="../../../inc/top1.jsp"></jsp:include>
	</header>
	<div id="notice_cont">
		<section id="sec_con" class="inr">
			<h1 class="con_title">공지사항</h1>
			<form action="" method="get">
				<section id="board_wrap">
					<section id="board_list" class="notice">
						<div class="wrapper">
							<div class="list_wrap">
								<ul class="list">
									<li>
										<div class="subject">
											<input type="text" placeholder="제목을 입력해주세요" class="inputBox">
										</div>
									</li>
	<!-- 								<li class="write_info"> -->
	<!-- 									<div class="write_box"> -->
	<!-- 										<span class="write_t">작성자명</span> -->
	<!-- 										<span class="write_c">관리자</span> -->
	<!-- 									</div> -->
	<!-- 									<div class="write_box"> -->
	<!-- 										<span class="write_t">등록일</span> -->
	<!-- 										<span class="write_c">2023-06-02</span> -->
	<!-- 									</div> -->
	<!-- 									<div class="write_box"> -->
	<!-- 										<span class="write_t">조회수</span> -->
	<!-- 										<span class="write_c">10</span> -->
	<!-- 									</div> -->
	<!-- 								</li> -->
								</ul>
								<div class="write_cont">
									<!-- 이미지 파일 출력 -->
	<!-- 								<img src="../img/casper.jpg" alt=""> -->
									<!-- 작성글 출력 -->
									<p>
										<textarea rows="" cols="" class="inputBox" placeholder="내용을 입력해주세요"></textarea>
									</p>
								</div>
	<!-- 							<div class="write_file"> -->
	<!-- 								<input type="file"> -->
	<!-- 							</div>							 -->
								<div class="mod_box">
	<!-- 								<a class="modify_btn">수정</a> -->
									<input type="submit" class="delete_btn" value="등록">
								</div>
							</div>
						</div>
					</section>
				</section>
			</form>
		</section>
	</div>
	<footer>
		<jsp:include page="../../../inc/footer.jsp"></jsp:include>
	</footer>
</body>
</html>