<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.sellerHr {
	width: 80%;
	height: 1px;
	background-color: #5f0080;
}
.sellerSubject {
	width: 30%;
	float: left;
	text-align: center;
}
.sellerAddFormBtn{
	width: 400pt;
	height: 50pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	font-size: 30px;
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
}
</style>
<br>
<br>

<!-- 상품등록페이지 Title -->
<h2 align="center">판매상품등록</h2>
<div style="text-align: center;">주문하실 상품명 및 수량을 정확하게 확인해주세요</div>

<br>
<br>
<br>
<br>

<!-- 상품등록페이지  (1)이미지 등록 -->

<div class="sellerSubject">
	<h3>상품 이미지 등록</h3>
</div>
<hr class="sellerHr">
<div style="width: 42%; float: left; text-align: right;">
	<img src="../image/grape.jpg" height="198">
</div>

<!-- 이미지 업로드 -->
<div
	style="width: 80%; text-align: center; margin: 0 auto;">
	<p>판매상품 이미지를 등록해주세요.</p>
	<form>
		<input type="file" name="upload_file" accept="image/*">
	</form>
	<br>
	<br> <input type="button" value="사진첨부">
</div>

<br>
<br>
<br>
<br>

<!-- 발송지 정보 -->
<hr class="sellerHr">
<br>
<br>
<div class="sellerSubject">
	<h3>상품등록 상세정보</h3>
</div>
<hr class="sellerHr">
<table width="50%" align="center">

	<tr>
		<td>카테고리</td>
		<td><input type="text" name="category"></td>
	</tr>

	<tr>
		<td>상품명</td>
		<td><input type="text" name="productName"></td>
	</tr>

	<tr>
		<td>판매가격</td>
		<td><input type="text" name="price"></td>
	</tr>

	<tr>
		<td>판매수량</td>
		<td><input type="text" name="number"></td>
	</tr>

	<tr>
		<td>상품상세설명</td>
		<td><input type="text" name="aboutProduct"></td>
	</tr>


	<tr>
		<td>상호명</td>
		<td><input type="text" name="storeName"></td>
	</tr>

	<tr>
		<td>판매자명</td>
		<td><input type="text" name="sellerName"></td>
	</tr>

	<tr>
		<td rowspan="3">배송정보</td>
	</tr>
	<tr>
		<td><input type="text" name="addr" size="50"></td>
	</tr>
	<tr>
		<td><input type="text" name="addr" size="50"></td>
	</tr>

	<tr>
		<td>연락처</td>

		<td><input type="text" name="sellerPhoneNumber" size="3">
			- <input type="text" name="sellerPhoneNumber" size="4"> - <input
			type="text" name="sellerPhoneNumber" size="4"></td>
	</tr>

	<tr>
		<td>배송요청사항</td>
		<td><input type="text" name="ps" size="50"></td>
	</tr>
</table>
<br>
<br>
<br>
<br>

<!-- 등록하기 버튼 -->
<br>
<br>
<div style="width: 85%; margin: 0 auto; text-align: center;">
	<input type="button" value="등록하기" class="sellerAddFormBtn">
</div>