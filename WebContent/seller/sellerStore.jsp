<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<style type="text/css">
.sellerStoreHr{
	text-align: left;
	border-collapse: collapse;
	margin
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;	
}
</style> 


<jsp:include page="sellerLeft.jsp"/>
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">

	<!-- ��ǰ��������� Title -->
	<h2 align="center">�������� ����</h2>
	<div style="text-align: center;">�Ǹ��� �������θ��� ���� �� ������.</div>
	<br><br><br><br>
	
	<h3 align="left">�Ǹ��� ���� ����</h3>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	
	<tr><th>���� �ּ� : ����Ư���� ���ʱ� ������� 459- ��Ʈ���� 103ȣ</th></tr>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	
	</table>
	<!-- ���� image -->
	<!-- <tr><td><img src="../image/map.JPG" width="1290"></td></tr> -->
	<div id="map" style="width:1300px;height:300px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c1ef5e207ff379d73296383f7e8dd32"></script>
	<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
    <!-- ����Ÿ�� ��Ʈ�� div �Դϴ� -->
   

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c1ef5e207ff379d73296383f7e8dd32"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
mapOption = { 
    center: new kakao.maps.LatLng(37.502998, 127.024198), // ������ �߽���ǥ
    level: 3 // ������ Ȯ�� ����
};

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

//�Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
var mapTypeControl = new kakao.maps.MapTypeControl();

//������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
//kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
	</table>	
</div>
</div>