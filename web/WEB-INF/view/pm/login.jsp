<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/donut-form-style.css">
</head>
<body>
    <div id="wrapper">
        <div id="header">
            Login
        </div>
    </div>

    <div id="container">
        <div id="content">
            <form:form method="POST" action="${contextPath}/authenticate">
                <table>
                    <c:if test="${param.logout != null}">
                        <tr>
                            <td></td>
                            <td class="error">You have logged out</td>
                        </tr>
                    </c:if>
                    <tr>
                        <td><label>Username</label></td>
                        <td><input type="text" name="username" value="user"></td>
                    </tr>
                    <tr>
                        <td><label>Password</label></td>
                        <td><input type="text" name="password" value="p"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login"></td>
                    </tr>
                    <c:if test="${param.error != null}">
                        <tr>
                            <td></td>
                            <td class="error">Invalid login</td>
                        </tr>
                    </c:if>
                </table>
            </form:form>
        </div>
    </div>

    <%@include file="/WEB-INF/view/pm/includes/footer.jsp"%>
</body>
</html>
