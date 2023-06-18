<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${car.car_type == '준중형' }">
<c:forEach var="car" items="${carInfoList }">

<div class="car-list">
<div class="car-item">
<div class="int_wrap">
  <div class="left-image">
    <!-- 왼쪽 이미지 내용 -->
    <img src="${pageContext.request.contextPath}/resources/upload/car${car.car_file_path}/${car.car_file}" alt="carImage">
  </div>
  <div class="right-content">
    <div class="name-flex">
      <div class="name1">
        <!-- 이름 내용 -->
        <p>${car.car_company} (${car.car_model})</p>
      </div>
      <div class="name2">
        <p>${car.car_type} / ${car.car_riding}인승 / ${car.car_fuel_type}</p>
      </div>
    </div>
    <div class="table-wrapper">
      <!-- 테이블 내용 -->
      <div class="table">
        <h3>요금정보</h3>
        <table class="custom-table" border="1">
          <tr>
            <th>구분</th>
            <th>주중 대여료</th>
            <th>주말 대여료</th>
          </tr>
          <tr>
            <td>24시간</td>
            <td><span>${car.car_weekdays},000</span>원</td>
            <td><span>${car.car_weekend},000</span>원</td>
          </tr>
          <tr>
            <td>6시간</td>
            <td>${car.car_weekdays - 2},000원</td>
            <td>${car.car_weekend - 2},000원</td>
          </tr>
          <tr>
            <td>1시간</td>
            <td>5,000원</td>
            <td>5,000원</td>
          </tr>
        </table>
        </c:forEach>
      </div>
      <div class="option-div">
        <h3>옵션</h3>
        <div class="custom-div">
          <!-- div 내용 -->
          <c:forEach var="car.option" items="${car.option_idx}">
            <c:choose>
              <c:when test="${optionIdx == 1}">
                <span>국제운전면허증 가능</span>
              </c:when>
              <c:when test="${optionIdx == 2}">
                <span>긴급출동 무료</span>
              </c:when>
              <c:when test="${optionIdx == 3}">
                <span>충전기 제공</span>
              </c:when>
              <c:when test="${optionIdx == 4}">
                <span>카시트 무료(수량 한정)</span>
              </c:when>
              <c:when test="${optionIdx == 5}">
                <span>금연</span>
              </c:when>
              <c:when test="${optionIdx == 6}">
                <span>열선 시트</span>
              </c:when>
              <c:when test="${optionIdx == 7}">
                <span>스마트키</span>
              </c:when>
              <c:when test="${optionIdx == 8}">
                <span>제2 운전자 등록 가능</span>
              </c:when>
              <c:when test="${optionIdx == 9}">
                <span>네비게이션</span>
              </c:when>
              <c:when test="${optionIdx == 10}">
                <span>후방 카메라</span>
              </c:when>
              <c:when test="${optionIdx == 11}">
                <span>블랙박스</span>
              </c:when>
              <c:when test="${optionIdx == 12}">
                <span>블루투스</span>
              </c:when>
              <c:when test="${optionIdx == 13}">
                <span>USB</span>
              </c:when>
            </c:choose>
          </c:forEach>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</c:if>