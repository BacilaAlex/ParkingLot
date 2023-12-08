<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:pageTemplate pageTitle="Cars">
    <h1>Add Car</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate" class="form-label">License Plate</label>
                <input name="license_plate" type="text" class="form-control" id="license_plate" required placeholder="" value="">
                <div class="invalid-feedback">
                    License Plate is required.
                </div>

                <label for="parking_spot" class="form-label">Parking Spot</label>
                <input name="parking_spot" type="text" class="form-control" id="parking_spot" required placeholder="" value="">
                <div class="invalid-feedback">
                    Parking Spot is required.
                </div>

                <label for="owner_id" class="form-label">Owner</label>
                <select name="owner_id" class="form-select" id="owner_id" required>
                    <option value="" >Choose...</option>
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <option value="${user.id}">${user.username}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Please select an Owner.
                </div>

                <hr class="my-4">
                <button class="btn btn-primary btn-lg" type="submit">Save</button>
            </div>
        </div>
    </form>
</t:pageTemplate>