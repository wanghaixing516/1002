<%--
  Created by IntelliJ IDEA.
  User: 王海兴
  Date: 2020/10/02
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table border="1px">
    <tr id="ti">
        <td>预定编号</td>
        <td>会议室</td>
        <td>预定人</td>
        <td>日期</td>
    </tr>
    <c:forEach items="${meetingrooms}" var="list">
        <tr>
            <td>${ list.id }</td>
            <td>${ list.meetingName }</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ list.meetingOrder }" type="both"/></td>
            <td>${ list.advanceName }</td>
        </tr>
    </c:forEach>
</table>
<p><a href="/addjin">预定会议室</a></p>
<script type="text/javascript">

    $(function(){
        $("tr:odd").css("background-color","#CB9A00")
        $("#ti").css("background-color","#999999");
    })
</script>
</body>
</html>
