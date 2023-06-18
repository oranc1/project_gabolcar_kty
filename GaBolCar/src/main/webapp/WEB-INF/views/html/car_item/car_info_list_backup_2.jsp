<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!-- 원본 파일 이름 6p -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/car_item/car_info_list.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="styleSheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="styleSheet">	

 	<script src="${pageContext.request.contextPath }/resources/js/inc/jquery-3.7.0.js"></script>
 	
</head>
<body>
	<header>
		<jsp:include page="../../inc/top1.jsp"></jsp:include>
	</header>
	<section id="sec_con" class="inr">
		<h1 class="con_title">차량 소개</h1>
		<!-- 	기본메인페이지 화면은 전체차량으로  -->
		<div class="isbox">
			<dl class="search-type">
				<dt>차종 선택</dt>
				<dd>
					<div class="left-div">
					<label for="selectCarType_0">
				    <input name="selectCarType" id="selectCarType_0" type="checkbox" value="경형/소형">
				    	경형/소형
					</label> 
					<label for="selectCarType_1">
					    <input name="selectCarType" id="selectCarType_1" type="checkbox" value="준중형">
					    준중형
					</label> 
					<label for="selectCarType_2">
					    <input name="selectCarType" id="selectCarType_2" type="checkbox" value="중형">
					    중형
					</label> 
					<label for="selectCarType_3">
					    <input name="selectCarType" id="selectCarType_3" type="checkbox" value="대형">
					    대형
					</label>
					<label for="selectCarType_4"> 
					    <input name="selectCarType" id="selectCarType_4" type="checkbox" value="SUV">
					    SUV
					</label>
					<label for="selectCarType_5"> 
					    <input name="selectCarType" id="selectCarType_5" type="checkbox" value="전기">
					    전기
					</label>
					<label for="selectCarType_6"> 
					    <input name="selectCarType" id="selectCarType_6" type="checkbox" value="수입">
					    수입
					</label> 
					</div>
				</dd>
			</dl>

			<dl class="search-type">
				<dt>연료 선택</dt>
				<dd>
					<div class="left-div">
						<label for="selectFuel_0"><input name="selectFuel"
							id="selectFuel_0" type="checkbox" value="가솔린">가솔린</label> <label
							for="selectFuel_1"><input name="selectFuel"
							id="selectFuel_1" type="checkbox" value="디젤">디젤</label> <label
							for="selectFuel_2"><input name="selectFuel"
							id="selectFuel_2" type="checkbox" value="LPG">LPG</label> <label
							for="selectFuel_3"><input name="selectFuel"
							id="selectFuel_3" type="checkbox" value="하이브리드">하이브리드</label> <label
							for="selectFuel_4"><input name="selectFuel"
							id="selectFuel_4" type="checkbox" value="전기">전기</label> <label
							for="selectFuel_5"><input name="selectFuel"
							id="selectFuel_5" type="checkbox" value="가솔린+LPG">가솔린+LPG</label>

					</div>
				</dd>
			</dl>
		</div>
		
		
		<script type="text/javascript">
		
		function showCars(carTypes) {
			  const cars = document.getElementsByClassName("car-item");
			  for (let i = 0; i < cars.length; i++) {
			    const car_type = cars[i].classList;
			    let showThisCar = true;
			    for (let j = 0; j < carTypes.length; j++) {
			      if (!car_type.contains(carTypes[j])) {
			        showThisCar = false;
			        break;
			      }
			    }
			    if (showThisCar) {
			      cars[i].style.display = "";
			    } else {
			      cars[i].style.display = "none";
			    }
			  }
			}
			
			// 선택된 버튼들을 저장할 배열을 초기화합니다.
			let selectedCarTypes = [];
			let selectedFuels = [];
			
			// 차종 선택 체크박스 클릭 이벤트 리스너를 추가합니다.
			$("input[name='selectCarType']").on("click", function() {
			  // 클릭된 체크박스의 value 값을 배열에 추가 or 제거합니다.
			  const carType = $(this).val();
			  if ($(this).is(":checked")) {
			    selectedCarTypes.push(carType);
			  } else {
			    selectedCarTypes = selectedCarTypes.filter((val) => val !== carType);
			  }
			  // showCars 함수에 선택된 차종 배열을 전달해, 해당 차종만 출력됩니다.
			  showCars(selectedCarTypes);
			});
			
			// 연료 선택 체크박스 클릭 이벤트 리스너를 추가합니다.
			$("input[name='selectFuel']").on("click", function() {
			  // 클릭된 체크박스의 value 값을 배열에 추가 or 제거합니다.
			  const fuel = $(this).val();
			  if ($(this).is(":checked")) {
			    selectedFuels.push(fuel);
			  } else {
			    selectedFuels = selectedFuels.filter((val) => val !== fuel);
			  }
			  // 연료는 선택 여부와 상관 없이 showCars 함수에 선택된 차종 배열도 함께 전달합니다.
			  showCars(selectedCarTypes.concat(selectedFuels));
			});

			// 체크박스 클릭시 버튼 활성화 처리
			$(".left-div > label").on("click", function() {
			  const checkbox = $(this).find("input:checkbox");
			  if (checkbox.is(":checked")) {
			    $(this).css({"background": "#fff", "color": "#000"});
			    checkbox.prop("checked", false);
			  } else {
			    $(this).css({"background": "#ff6600", "color": "#fff"});
			    checkbox.prop("checked", true);
			  }
			});

			$(".right-div > label").on("click", function() {
			  const checkbox = $(this).find("input:checkbox");
			  if (checkbox.is(":checked")) {
			    $(this).css({"background": "#fff", "color": "#000"});
			    checkbox.prop("checked", false);
			  } else {
			    $(this).css({"background": "#ff6600", "color": "#fff"});
			    checkbox.prop("checked", true);
			  }
			});
			

		</script>

		<jsp:include page="inc/car_info_item.jsp"></jsp:include>

	</section>
	<footer>
		<jsp:include page="../../inc/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
