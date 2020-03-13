<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
.sellerAllTable{
	text-align: center;
	border-collapse: collapse;
	width: 60%;
	float: left;
}
</style>
<jsp:include page="sellerLeft.jsp"/>
<div style="width: 60%; float: left; text-align: center;">
	<!-- 상품등록페이지 Title -->
	<h2 align="center">판매상품 모아보기</h2>
	<div style="text-align: center;">판매자님의 판매중인 상품입니다.</div>
	<br>
	<br>
	<div style="text-align: right;">list 정렬 dropbox 추가</div>
	<table class="sellerAllTable" cellpadding="30">
		<tr>
			<td>
				<img src="../image/grape.jpg" height="198" width="198">
				<br><br>
				<input type="button" value="판매현황">					<%-- 이 버튼은 판매자한테만 보이게하면 될거같아여ㅕㅕㅕ --%>
				<input type="button" value="판매중단">
				<br><br>싱싱포도 1kg
			</td>
			<td>
				<img src="../image/grapeJam.jpg" height="198">
				<br><br>
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
				<br><br>수제 포도 쨈 500g
			</td>
			<td>
				<img src="../image/grapejuice.JPG" height="198">
				<br><br> 
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
				<br><br>포도쥬스800ml
			</td>
		</tr>
		<tr>
			<td>
				<img src="../image/grape.jpg" height="198" width="198">
				<br><br>
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
				<br><br>싱싱포도 1kg
			</td>
			<td>
				<img src="../image/grapeJam.jpg" height="198">
				<br><br>
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
				<br><br>수제 포도 쨈 500g
			</td>
			<td>
				<img src="../image/grapejuice.JPG" height="198">
				<br><br> 
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
				<br><br>포도쥬스800ml
			</td>
		</tr>
	</table>
</div>
<br><br><br><br>