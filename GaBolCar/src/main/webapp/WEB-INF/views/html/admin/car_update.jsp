<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 수정중 -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Car_Leg</title>
 
<link href="${pageContext.request.contextPath }/resources/css/inc/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/admin/car_register.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/inc/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/inc/jquery-3.7.0.js"></script>
</head>
<body>
	<section id="reg_section">
    	<div id="title_container">
      	<h1>차량 수정</h1>
    	</div>
		<form action="carUpdatePro" name="writeForm" method="post" enctype="multipart/form-data">
		<input type="hidden" id="option_idx" name="option_idx" value="${option.option_idx }">
	  		<div id="modifyForm">
	    		<table>
	      		<tr>
	        			<td class="td_left"><label for="car_type">차종</label></td>
	        			<td class="td_right">
	          				<select name="car_type" required="required" class="form-select">
	            				<option value="경형/소형" ${car.car_type eq "경형/소형" ? "selected" : ""}>경형/소형</option>
	            				<option value="준중형" ${car.car_type eq "준중형" ? "selected" : ""}>준중형</option>
	            				<option value="중형" ${car.car_type eq "중형" ? "selected" : ""}>중형</option>
	            				<option value="대형" ${car.car_type eq "대형" ? "selected" : ""}>대형</option>
	            				<option value="SUV" ${car.car_type eq "SUV" ? "selected" : ""}>SUV</option>
	            				<option value="승합" ${car.car_type eq "승합" ? "selected" : ""}>승합</option>
	            				<option value="수입" ${car.car_type eq "수입" ? "selected" : ""}>수입</option>
							</select>
	        			</td>
	      		</tr>
					<tr>
			            <td class="td_left"><label for="car_number">차량번호</label></td>
			            <td class="td_right"><input type="text" name="car_number" required="required" class="form-control" value="${car.car_number }" /></td>
					</tr>
          		<tr>
			            <td class="td_left"><label for="car_company">제조사 </label></td>
			            <td class="td_right"><input type="text" name="car_company" required="required" class="form-control" value="${car.car_company }" /></td>
          		</tr>
          		<tr>
            			<td class="td_left"><label for="car_model">모델명 </label></td>
            			<td class="td_right"><input type="text" name="car_model" required="required" class="form-control" value="${car.car_model }" /></td>
          		</tr>
          		<tr>
            			<td class="td_left"><label for="car_old">연식 </label></td>
            			<td class="td_right"><input type="text" name="car_old" required="required" class="form-control" value="${car.car_old }" /></td>
          		</tr>
          		<tr>
			            <td class="td_left"><label for="car_shift_type">변속타입</label></td>
			            <td class="td_right">
               			<select name="car_shift_type" required="required" class="form-select">
												<option value="수동" ${car.car_shift_type eq "수동" ? "selected" : ""}>수동</option>
												<option value="자동" ${car.car_shift_type eq "자동" ? "selected" : ""}>자동</option>
               			</select>
            			</td>
          		</tr>
          		<tr>
			            <td class="td_left"><label for="car_fuel_type">연료</label></td>
			            <td class="td_right">
                			<select name="car_fuel_type" required="required" class="form-select">
												<option value="가솔린" ${car.car_fuel_type eq "가솔린" ? "selected" : ""}>가솔린</option>
												<option value="디젤" ${car.car_fuel_type eq "디젤" ? "selected" : ""}>디젤</option>
												<option value="LPG" ${car.car_fuel_type eq "LPG" ? "selected" : ""}>LPG</option>
												<option value="하이브리드" ${car.car_fuel_type eq "하이브리드" ? "selected" : ""}>하이브리드</option>
												<option value="전기" ${car.car_fuel_type eq "전기" ? "selected" : ""}>전기</option>
												<option value="가솔린+LPG" ${car.car_fuel_type eq "가솔린+LPG" ? "selected" : ""}>가솔린+LPG</option>
               			</select>
            			</td>
          		</tr>
          		<tr>
			            <td class="td_left"><label for="car_riding">정원</label></td>
			            <td class="td_right"><input type="text" name="car_riding" required="required" class="form-control" value="${car.car_riding}"/></td>
          		</tr>		
         		 <tr>
            			<td class="td_left"><label for="car_age">나이제한</label></td>
            			<td class="td_right"><input type="text" name="car_age" required="required" class="form-control" value="${car.car_age}"/></td>
          		</tr>		
         		 <tr>
            			<td class="td_left"><label for="car_career">운전경력제한</label></td>
            			<td class="td_right"><input type="text" name="car_career" required="required" class="form-control" value="${car.car_career}"/></td>
         		 </tr>		
          		<tr>
			            <td class="td_left"><label for="car_license">면허종류</label></td>
			            <td class="td_right">
			                <select name="car_license" required="required" class="form-select">
			                    <option value="1종" ${car.car_license eq "1종" ? "selected" : ""}>1종</option>
			                    <option value="2종" ${car.car_license eq "2종" ? "selected" : ""}>2종</option>
	                			</select>
			            </td>
          		</tr>
          		<tr>
		        		<td class="td_left"><label for="car_weekdays">주중 대여료</label></td>
		        		<td class="td_right"><input type="text" name="car_weekdays" required="required" class="form-control" value="${car.car_weekdays }" /></td>
          		</tr>
          		<tr>
			            <td class="td_left"><label for="car_weekend">주말 대여료</label></td>
			            <td class="td_right"><input type="text" name="car_weekend" required="required" class="form-control" value="${car.car_weekend }" /></td>
          		</tr>
			      	<tr>
							<td class="td_left"><label for="brc_name">지점명</label></td>
				        <td class="td_right">
			              	<select name="brc_name" required="required" class="form-select">
			                <option value="">선택</option>
			                <c:forEach var="brc" items="${brcList }">
			                  <option value="${brc.brc_name }" ${car.brc_name eq brc.brc_name ? "selected" : ""}>${brc.brc_name }</option>
			                </c:forEach>
			              </select>
				        </td>
          		</tr>
          		<tr>
						<td class="td_left"><label for="option_name">옵션</label></td>
						<td class="td_right">
			          		<div class="row">
			            		<div class="col-md-12">
									<label class="checkbox-label">
										<input type="checkbox" id="selectAllCheckbox" ${optionSelected eq optionList.length ? "checked" : ""}>
			                			전체 선택
			              			</label>
										<c:forEach var="option" items="${optionList }">
											<label class="checkbox-label">
												<c:choose>
													<c:when test="${car_options.contains(option.option_idx) }">
														<input type="checkbox" name="option_idx" value="${option.option_idx }" checked>${option.option_name }
													</c:when>
													<c:otherwise>
														<input type="checkbox" name="option_idx" value="${option.option_idx }">${option.option_name }
													</c:otherwise>
												</c:choose>
											</label>
										</c:forEach>
			            		</div>
							</div>
		        		</td>
          		</tr>
          		
	        	<tr>
			    		<td class="td_left"><label>이미지 첨부1</label></td>
			    		<td class="td_right">
			    		<c:forEach var="file" items="${car.car_files}">
              			<img src="${pageContext.request.contextPath }/resources/upload/car${car.car_file_path }" alt="이미지" style="max-height:400px">
              			<input type="hidden" name="carFiles" value="${file}">
              				<button type="button" class="btn btn-danger btn-xs" onclick="deleteFile('${car.car_idx}','${file}','${car.car_file_path }')">삭제</button>
            			</c:forEach>
            			<br>
			      		<input type="file" name="files" multiple="multiple" required="required" class="form-control"/>
			    		</td>
	    		</tr>
			    		
<!-- 		    		<tr> -->
<!-- 			    		<td class="td_left"><label>이미지 첨부1</label></td> -->
<!-- 			    		<td class="td_right"> -->
<%-- 			    		<c:choose> --%>
<%-- 			    		<c:when test="${empty car.car_file }"> --%>
<!-- 			    				<td class='td_left'><label for='car_image'>차량 이미지</label></td> -->
<%-- 								<td class="td_right"><input type="text" name="car_image" required="required" class="form-control" value="${car.car_name }"/></td> --%>
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								<td class="td_left" id="opth_1"><img src="${pageContext.request.contextPath }/resources/upload/car/${car.car_file_path }"></td> --%>
<!-- 								<td class="td_right" id="opth_2"><button id="imageDelete" type="button" class="btn btn-secondary">삭제</button></td> -->
<%-- 							</c:otherwise> --%>
<%-- 			    		</c:choose> --%>
<!--       				</tr> -->

<!-- 					<tr> -->
<!-- 		                <td class="td_left"><label for="option_name">옵션명</label></td> -->
<%-- 		                <td class="td_right"><input type="text" name="option_name" required="required" class="form-control" value="${option.option_name }"/></td> --%>
<!-- 					</tr> -->
<!-- 					<tr> -->
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${empty option.option_image_url }"> --%>
<!-- 								<td class='td_left'><label for='option_image'>옵션 이미지</label></td> -->
<!-- 								<td class='td_right'><input type='file' accept="image/*" name='option_image' required='required' class='form-control'/></td> -->
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								<td class="td_left" id="opth_1"><img src="${pageContext.request.contextPath }/resources/upload/car_options/${option.option_image_url }"></td> --%>
<!-- 								<td class="td_right" id="opth_2"><button id="imageDelete" type="button" class="btn btn-secondary">삭제</button></td> -->
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
<!-- 					</tr> -->



	      		<tr>
	        			<td class="td_left"><label for="car_status">차량상태</label></td>
	        			<td class="td_right">
	          				<select name="car_status" required="required" class="form-select">
	            				<option value="신규" ${car.car_status eq "신규" ? "selected" : ""}>신규</option>
	            				<option value="점검" ${car.car_status eq "점검" ? "selected" : ""}>점검</option>
	            				<option value="대여" ${car.car_status eq "대여" ? "selected" : ""}>대여</option>
	            				<option value="가능" ${car.car_status eq "가능" ? "selected" : ""}>대기</option> 
							</select>
	        			</td>
	      		</tr>
	    		</table>
		    		<div id="commandCell">
		      			<input type="submit" value="수정" class="btn btn-warning">&nbsp;&nbsp;
		      			<input type="reset" value="다시쓰기" class="btn btn-secondary">&nbsp;&nbsp;
		      			<input type="button" value="취소" onclick="history.back()" class="btn btn-secondary">
		    		</div>
	  			</div>
				<input type="hidden" name="car_idx" value="${car.car_idx}">
		</form>
	</section>
	<script>
	  document.addEventListener('DOMContentLoaded', function() {
	    var selectAllCheckbox = document.getElementById('selectAllCheckbox');
	    var checkboxes = document.querySelectorAll('input[name="option_idx"]');
	  
	    selectAllCheckbox.addEventListener('change', function() {
	      checkboxes.forEach(function(checkbox) {
	        checkbox.checked = selectAllCheckbox.checked;
	      });
	    });
	  });
</script> 
<script>
function deleteFile(car_idx, car_file, car_file_path) {
  console.log(car_idx, car_file, car_file_path);
  $.ajax({
    url: "CarDeleteFile",
    method: "POST",
    data: {
      car_idx: car_idx,
      car_file: car_file,
      car_file_path: car_file_path
    },
    success: function(result) {
      if(result == "true") {
        alert("파일이 삭제되었습니다.");
        window.location.reload(); // 파일이 삭제된 후 페이지를 새로고침합니다.
      }
      else {
        alert("파일 삭제 실패!");
      }
    }
  });
}
</script>
</body>
</html>