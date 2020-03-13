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
	height: 450px;
	top: 50%; 
	left: 50%;  
	
}

.layout{  
	width: 340px;
	height: 54px;
	line-height: 20px;   
    border-radius: 3px; 
    background: #fff;
    border: 1px solid #5f0080;
    outline: none; 
    color: #5f0080; 
    padding: 0 15px;
}

</style> 

 
<form action=""> 
<div class="box">  

<h2 align="center">로그인</h2>
	<div>
		<input class="layout" type="text" name="id" placeholder=" 아이디를 입력해주세요" style="font-size:15px; width:308px;">
	</div>
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="password" name="pwd" placeholder=" 비밀번호를 입력해주세요" style="font-size:15px; width:308px;">
	</div>
	<div style="width:340px; height:54px;" align="right">
	<a class="searchA" href="/bitFarm/member/findID.do">아이디 찾기</a>
	<a class="searchA" href="/bitFarm/member/findPWD.do">비밀번호 찾기</a>&nbsp; 
	</div>
	<div>
		<input class="layout" type="button" value="로그인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 5px; cursor: pointer;">
	</div>  
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="button" value="회원가입" style="border-radius: 5px; cursor: pointer;"> 
		
	</div>	 	 
		<div style="height:5px;"></div>
	<div style="height:60px; ">
		<div id="naverIdLogin" style="float:left; width:65px;"></div>
		
		<div>
			<a id="custom-login-btn" href="javascript:loginWithKakao()">
			<img src="../image/kakao.png" width="54"/>
			</a>
		</div>
	</div> 

</div>   




</form>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

	var naverLogin = new naver.LoginWithNaverId( 
		{
			clientId: "6e2AC3FsiPra5HM8Xm5w",
			callbackUrl: "http://localhost:8080/bitFarm/member/naverLoginCallback.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "white", type: 1, height: 54} /* 로그인 버튼의 타입을 지정 */
		}  
	); 
	
	/* 설정정보를 초기화하고 연동을 준비 */ 
	naverLogin.init();
	
	///////////////////////////////////////////////
	
	  Kakao.init('a60e0ff04e91bc59cb5a460f86a8747d');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
        	 Kakao.API.request({
                 url: '/v2/user/me',
                 success: function(res) {
                //	 alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
                //   alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
                          
                	 alert("아이디:"+res.id+" 이메일:"+res.kakao_account.email+" 닉네임:"+res.properties['nickname']);    
                
                 },
                 fail: function(error) {
                   alert(JSON.stringify(error));
                 }
               });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
	
</script>