<%--
  Created by IntelliJ IDEA.
  User: 王海兴
  Date: 2020/10/02
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
    <form action="/add" method="post">
        <table border="1px">
            <tr align="center">
                <td style="background-color: #999999">会议室预定</td>
            </tr>
            <tr >
                <td> 会议室：  <select name="meetingName" id="id1">
                    <option value="一号会议室">一号会议室</option>
                    <option value="二号会议室">二号会议室</option>
                    <option value="三号会议室">三号会议室</option>
                    <option value="四号会议室">四号会议室</option>
                </select></td>
                <%--<input type="hidden" name="id" value=""/>--%>
            </tr>
            <tr>
                <td> 申请人: <input type="text" name="advanceName" id="id"></td>
            </tr>
            <tr><td>预定日期：<input type="text" name="meetingOrder" id="id"></td></tr>
            <tr><td align="center">
                <input type="submit" value="申请">&nbsp;<input type="button" value="重置">
            </td></tr>

        </table>
    </form>
<script type="text/javascript">
    $("[type='button']").click(function () {
        $('#id').val('');
        $('#id1').val('一号会议室');
    })
    $("form").submit(function(){
        var reg=/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
        if(!meetingOrder.match(reg)){
            alert("上传时间格式不正确!!!");
            return false;
        }
        alert("会议室预定成功");
        return true;
    })
</script>
</body>
</html>
