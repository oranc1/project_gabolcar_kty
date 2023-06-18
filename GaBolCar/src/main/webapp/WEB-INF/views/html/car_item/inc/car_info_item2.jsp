<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="car-list">
            <div class="car-item">
	    <c:forEach var="car" items="${carInfoList }">
	        <c:if test="${car.car_type == '준중형'}">
                <div class="left-image">
                    <img src="${pageContext.request.contextPath}/resources/upload/car/${car.car_file_path}/${car.car_files[0].file_name}" alt="${car.car_model}" />
                </div>
                <div class="right-content">
                    <div class="name1">
                        <p>${car.car_model}(${car.car_company})</p>
                    </div>
                    <div class="name2">
                        <p>${car.car_shift_type} / ${car.car_riding}인승 / ${car.car_fuel_type}</p>
                    </div>
                    <table>
                        <tr>
                            <th>구분</th>
                            <th>주중 대여료</th>
                            <th>주말 대여료</th>
                        </tr>
                        <c:forEach var="price" items="${car.price_list}">
                            <tr>
                                <td>${price.price_type}</td>
                                <td>${price.price_weekday} 원</td>
                                <td>${price.price_weekend} 원</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <p>옵션 : ${car.car_options}</p>
                </div>
        </c:if>
    </c:forEach>
            </div>
</div>