<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">Carousel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/about.jsp' ? ' active' : ''}" aria-current="page"
                           href="${pageContext.request.contextPath}/about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/cars.jsp' ? ' active' : ''}" href="${pageContext.request.contextPath}/Cars">Cars</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/users.jsp' ? ' active' : ''}" href="${pageContext.request.contextPath}/Users">Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                   <ul class="navbar-nav">
                       <li class="navbar-item">
                           <c:choose>
                               <c:when test="${pageContext.request.getRemoteUser() == null}">
                                   <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                               </c:when>
                               <c:otherwise>
                                   <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                               </c:otherwise>
                           </c:choose>
                       </li>
                   </ul>
                </form>
            </div>
        </div>
    </nav>
</header>