<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-31
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>title</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <style>
        container {
            max-width: 700px;
        }
    </style>
</head>
<body>
    <h2>list.jsp</h2>
    <div class="container">
        <table class="table">
           <tr>
               <th>id</th>
               <th>memberId</th>
               <th>memberPassword</th>
               <th>memberName</th>
               <th>memberEmail</th>
               <th>memberMobile</th>
               <th>memberProfile</th>
               <th>조회</th>
               <th>삭제</th>
           </tr>
            <c:forEach items="${memberlist}" var="member">
               <tr>
                   <td>${member.Id}</td>
                   <td>${member.memberId}</td>
                   <td>${member.memberPassword}</td>
                   <td>${member.memberName}</td>
                   <td>${member.memberEmail}</td>
                   <td>${member.memberMobile}</td>
                   <td>${member.memberProfile}</td>
                   <td><a herf="/detail?id=${member.id}">조회</a></td>
                   <td><a herf="/detail?id=${member.id}">삭제</a></td>
                   <td><button class="btn-primary">회원목록조회</button> </td>
<%-- 클릭한 회원의 정보를 DB에서 가져와서 detail.jsp에 출력 --%>
               </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
