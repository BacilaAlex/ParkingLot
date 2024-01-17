<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:pageTemplate pageTitle="EditUser">
    <h1>Edit Car</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditUser">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="username" class="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder=""
                       value="${user.username}">
                <div class="invalid-feedback">
                    Username is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required placeholder=""
                       value="${user.email}">
                <div class="invalid-feedback">
                    Email is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder=""
                       value="${user.password}">
                <div class="invalid-feedback">
                    Password is required.
                </div>
            </div>
        </div>
        <hr class="my-4">
        <input type="hidden" name="user_id" value="${user.id}"/>
        <button class="btn btn-primary btn-lg" type="submit">Save</button>
        </div>
    </form>
</t:pageTemplate>