<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
a.searchA {color:blak; text-decoration: none; font-size: 8pt;}
a.searchA:link {color: black; text-decoration: none;}
a.searchA:visited {color: black; text-decoration: none;}
a.searchA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
a.searchA:active {color: black; text-decoration: none;}

.box{
	margin: 0 auto;
	width: 340px;
	height: 400px;
	top: 50%; 
	left: 50%;  
	
}

.layout{  
	width: 340px;
	height: 54px;
	line-height: 20px;  
    border-radius: 3px; 
    background: #fff;
    border: 1px solid #ccc;
    outline: none; 
}

</style> 

 
<form action=""> 
<div class="box">  

<h2 align="center">로그인</h2>
	<div>
		<input class="layout" type="text" name="id" placeholder=" 아이디를 입력해주세요" style="font-size:15px;">
	</div>
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="password" name="pwd" placeholder=" 비밀번호를 입력해주세요" style="font-size:15px;">
	</div>
	<div style="width:340px; height:54px;" align="right">
	<a class="searchA" href="#">아이디 찾기</a>
	<a class="searchA" href="#">비밀번호 찾기</a>&nbsp;
	</div>
	<div>
		<input class="layout" type="button" value="로그인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 5px;">
	</div>  
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="button" value="회원가입" style="border-radius: 5px;"> 
	</div>	 	
	
</div>  
</form>
