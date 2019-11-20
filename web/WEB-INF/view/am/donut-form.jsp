<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Donut Reviews - Edit Donut</title>
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/donut-form-style.css">
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/select-style.css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Donut Reviews</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <form:form action="${contextPath}/donut/save" enctype="multipart/form-data" modelAttribute="donut"
                   method="post">
            <form:hidden path="id" value="${donut.id}"/>
            <form:hidden path="imageFilename" value="${donut.imageFilename}"/>
            <form:hidden path="dateAdded" value="${donut.dateAdded}"/>

            <table>
                <tr>
                    <td><label>Name</label></td>
                    <td><form:input path="name"/>
                        <form:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label>Calories</label></td>
                    <td><form:input path="calories"/>
                        <form:errors path="calories" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label>Shop</label></td>
                    <td>
                        <form:select path="shop" items="${donutShops}" itemLabel="name" itemValue="id"
                                     cssClass="select-css">
                        </form:select>
                        <form:errors path="shop" cssClass="error"/>
                    </td>
                </tr>
                <tr>
                    <td><label>Image</label></td>
                    <td>
                        <input type="file" name="image">
                        <c:if test="${donut.imageFilename != null}">
                            <br/><br/>
                            <img src="${contextPath}/resources/img/${donut.imagePath}" alt="${donut.name}">
                            <br/>${donut.imageFilename}
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save" class="save"></td>
                </tr>
            </table>
        </form:form>

        <div style="clear: both;">
            <p>
                <a href="${contextPath}/donut/list">Back to List</a>
            </p>
        </div>

    </div>
</div>
</body>
</html>
