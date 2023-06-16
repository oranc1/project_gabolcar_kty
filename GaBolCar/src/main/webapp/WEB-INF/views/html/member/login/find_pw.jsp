<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/common.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/member/login/find_id_pw.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="styleSheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="styleSheet">

<script src="${pageContext.request.contextPath }/resources/js/inc/jquery-3.7.0.js"></script>
</head>
<body>
	<header>
		<jsp:include page="../../../inc/top1.jsp"></jsp:include>
	</header>
	
		<div  id="sec_con" class="w3-container-main inr">
			<div class="mem_wrap">			
				<h1 class="con_title">아이디 비밀번호 찾기</h1>
					<div class="find_wrap">
	
						<div class="fisrt_box">
							<h4>비밀번호 찾기 결과</h4>
						</div>
						<div class="id_result">
							<p id="result">회원님의 <span class="result_c">임시 비밀번호</span>
							가 메일로 전송되었습니다.	</p>
						</div>
						<div class="btn-wrap">
							<input type="button" class="move_main" value="메인으로 이동">
						</div>
		
					</div>
			</div>
		</div>
	
	<footer>
		<jsp:include page="../../../inc/footer.jsp"></jsp:include>
	</footer>	
</body>
</html>