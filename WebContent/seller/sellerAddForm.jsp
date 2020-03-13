<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.sellerHr {
	width: 85%;
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
	<!-- <p>판매상품 이미지를 등록해주세요.</p> -->
	<p>판매상품 메인이미지를 등록해주세요.</p>
	<form>
		<input type="file" name="upload_file" accept="image/*" value="사진첨부">
	</form>
	<br>
	<br> <!-- <input type="button" value="사진첨부"> -->
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
		<td>카테고리</td> <!--select box 상위카테고리 - 하위카테고리  -->
		<!-- <td><input type="text" name="category"></td> -->
		<td><!-- <select name = "top" style="width: 60px">
			<option value = "fruit">과일/과일즙</option>
			<option value = "cow">축산/유정란</option>
			<option value = "rice">쌀/잡곡/견과류</option>
			<option value = "potato">고구마/감자/채소/버섯</option>
			<option value = "kimchi">장류/김치</option>
			<option value = "sale">알뜰상품</option>
			</select>
			<select name = "mid" style="width: 60px">
			<option value = "fruitE">과일</option>
			<option value = "cowE">축산</option>
			<option value = "riceE">견과류</option>
			<option value = "potatoE">장류</option>
			<option value = "kimchiE">장류/김치</option>
			<option value = "saleE">알뜰상품</option>
			</select> -->
			 <select class="category1">
  				<option value="">전체</option>
 			</select>
 			
 			<select class="category2">
  				<option value="">전체</option>
 			</select>
		</td>
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
		<td><!-- 판매수량 -->재고수량</td>
		<td><input type="text" name="number"></td>
	</tr>

	<tr>
		<!-- <td>상품상세설명</td> --> <!-- 이미지 -->
		<!-- <td><input type="text" name="aboutProduct"> -->
		<td>상품상세이미지 첨부</td>
		<td><input type="file" name="upload_file" accept="image/*" value="사진첨부"></td>
	</tr>


	<!--<tr>
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
	</tr>-->
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