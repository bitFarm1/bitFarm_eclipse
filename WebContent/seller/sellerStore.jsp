<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<style type="text/css">
.sellerStoreHr{
	width: 85%; height: 2px; background-color: #5f0080;
}
</style>
<jsp:include page="sellerLeft.jsp"/>
	
<div style="width: 60%; float: left; text-align: center;">
	<!-- ��ǰ��������� Title -->
	<h2>�������� ����</h2>
	<div>�Ǹ����� �������� ������ ����������</div>
	
	<p style="clear: both; height: 5px;"></p>

	<!-- ��ǰ���������  (1)�̹��� ��� -->
	<h3 align="left">������ ��ġ Ȯ��</h3>	
	<img src="../image/map.JPG" width="800" >
	<p>���� �ּ� : ����Ư���� ���ʱ� ������� 459- ��Ʈ���� 103ȣ</p>	
</div>

<!-- īī�� �� �ҷ����� ���� ������... �����μ����� ȭ�鿡 ��� �� �ִٰ� �� -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c1980da3dce399f0eaca606982a636a7"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
var mapTypeControl = new kakao.maps.MapTypeControl();

// ���� Ÿ�� ��Ʈ���� ������ ǥ���մϴ�
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

function getInfo() {
    // ������ ���� �߽���ǥ�� ���ɴϴ� 
    var center = map.getCenter(); 
    
    // ������ ���� ������ ���ɴϴ�
    var level = map.getLevel();
    
    // ����Ÿ���� ���ɴϴ�
    var mapTypeId = map.getMapTypeId(); 
    
    // ������ ���� ������ ���ɴϴ� 
    var bounds = map.getBounds();
    
    // ������ ������ ��ǥ�� ���ɴϴ� 
    var swLatLng = bounds.getSouthWest(); 
    
    // ������ �ϵ��� ��ǥ�� ���ɴϴ� 
    var neLatLng = bounds.getNorthEast(); 
    
    // ���������� ���ڿ��� ���ɴϴ�. ((��,��), (��,��)) �����Դϴ�
    var boundsStr = bounds.toString();
    
    
    var message = '���� �߽���ǥ�� ���� ' + center.getLat() + ', <br>';
    message += '�浵 ' + center.getLng() + ' �̰� <br>';
    message += '���� ������ ' + level + ' �Դϴ� <br> <br>';
    message += '���� Ÿ���� ' + mapTypeId + ' �̰� <br> ';
    message += '������ ������ ��ǥ�� ' + swLatLng.getLat() + ', ' + swLatLng.getLng() + ' �̰� <br>';
    message += '�ϵ��� ��ǥ�� ' + neLatLng.getLat() + ', ' + neLatLng.getLng() + ' �Դϴ�';
    
    // �����ڵ����� ���� ���� message ������ Ȯ���� ������.
    // ex) console.log(message);
}
</script>
