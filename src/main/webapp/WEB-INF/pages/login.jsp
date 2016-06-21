<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<form action="${pageContext.request.contextPath}/base/path.do" method="post">
    <input type="text" name="userName">
    <input type="text" name="password">
    <input type="submit" value="login">
</form>
<img src="${pageContext.request.contextPath}/image/1111.jpg" alt="">
</body>
</html>
