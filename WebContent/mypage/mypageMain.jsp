<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table  width="80%" align="center">
	<tr>
		<td colspan="2"><jsp:include page="mypageTop.jsp"/></td>
	</tr>
	<tr>
		<td width="15%" valign="top"><jsp:include page="mypageLeft.jsp"/></td>
		<td><jsp:include page="${mypage}"/></td>
	</tr>
</table>