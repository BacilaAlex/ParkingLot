<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Welcome to the Parking Lot</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
        <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Cars</a>
        <div class="container text-center">
            <c:forEach var="car" items="${cars}">
                <div class="row">
                    <div class="col">
                        <input type="checkbox" name="car_ids" value="${car.id}"/>
                    </div>
                    <div class="col">
                            ${car.licensePlate}
                    </div>
                    <div class="col">
                            ${car.parkingSpot}
                    </div>
                    <div class="col">
                            ${car.ownerName}
                    </div>
                    <div class="col">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit
                            Car</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </form>
</t:pageTemplate>