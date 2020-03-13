<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
hr.orderHr{
	width: 80%; height: 1px; background-color: #5f0080;
}
div.itemInfo60{
	width: 68%; float: left; text-align: right;
}
div.itemInfo30{
	width: 30%; float: left; text-align: center;
}
.orderBtn{
	width: 400pt;
	height: 50pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	font-size: 30px;
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
	cursor: pointer;
}
</style>
<br><br>
	<h2 align="center">주 문 서</h2>
	<div style="width: 80%;	margin:0 auto; text-align: center;">주문하실 상품명 및 수량을 정확하게 확인해주세요</div>
<br><br>
	<div style="width: 80%;	margin:0 auto;"><h3>상품 정보</h3></div>
	<hr class="orderHr">
		<div style="width: 68%; float: left; text-align: right;">상품정보</div>
		<div style="width: 30%; float: left; text-align: center;">금액</div>
		<div style="height: 20px;"></div>
	<hr class="orderHr">
		<div style="width: 38%; float: left; text-align: right;">
			<img src="../image/berry.jpg" height="100">
			<div style="height: 10px;"></div>
		</div>
		<div style="width: 30%; float: left; text-align: right; height:100;"><br>상품정보</div>
		<div style="width: 30%; float: left; text-align: center; height:100;"><br>금액</div>
		
	<hr class="orderHr">
<br><br>
	<div style="width: 80%;	margin:0 auto;"><h3>주문자 정보</h3></div>
	<hr class="orderHr">
		<div style="width: 30%; float: left; text-align: center;">
			보내는분<br>
			휴대폰<br>
			이메일<br>
			<div style="height: 10px;"></div>
		</div>
		<div style="width: 30%; float: left; text-align: left;">
			보내는분<br>
			휴대폰<br>
			이메일<br>
			 
		</div>
	<hr class="orderHr">
<br><br>
	<div style="width: 80%;	margin:0 auto;"><h3>배송 정보</h3></div>
	<hr class="orderHr">
		<table width="80%" align="center">
			<tr>
				<td rowspan="3">주소</td>
				<td><input type="button" value="배송지추가"></td>
			</tr>
			<tr>
				<td><input type="text" name="addr" size="50"></td>
			</tr>
			<tr>
				<td><input type="text" name="addr" size="50"></td>
			</tr>
			<tr>
				<td>수령인</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td>
				<input type="text" name="phoneNumber" size="3"> -
				<input type="text" name="phoneNumber" size="4"> -
				<input type="text" name="phoneNumber" size="4">
				</td>
			</tr>
			<tr>
				<td>배송요청사항</td>
				<td><input type="text" name="ps"></td>
			</tr>
		</table>
	<hr class="orderHr">
<br><br>
	<div style="width: 80%;	margin:0 auto;"><h3>쿠폰/적립금</h3></div>
	<hr class="orderHr">
		<div style="width: 30%; float: left; text-align: center;">
			쿠폰 적용<br>
			적립금 적용<br>
			<div style="height: 10px;"></div>
		</div>
		<div style="width: 30%; float: left; text-align: left;">
			보내는분<br>
			휴대폰<br>
		</div>
	<hr class="orderHr">
<br><br>
	<div style="width: 80%;	margin:0 auto;"><h3>결제수단</h3></div>
	<hr class="orderHr">
	<div style="width: 50%; float: left; text-align: center;">
		<input type="radio">일반결제<br><br>
		<input type="radio">카카오페이<br><br>
		<input type="radio">네이버페이<br><br>
	</div>
	<div style="float: right; width: 40%;">
		상품 금액 &emsp; 9,900원<br>
		<hr align="left" width="50%">
		할인 금액 &emsp; 0원<br>
		배송비 &emsp; 0원<br>
		쿠폰사용 &emsp; 0원<br>
		적립금사용 &emsp; 0원<br>
		<hr align="left" width="50%">
		최종 결제 금액 &emsp; 9,900원<br>
		<div style="height: 10px;"></div>
	</div>
	<hr class="orderHr">
<br><br>
	<div style="width: 85%; margin: 0 auto; text-align: center;">
		<input type="button" class="orderBtn" value="주문하기">
	</div>