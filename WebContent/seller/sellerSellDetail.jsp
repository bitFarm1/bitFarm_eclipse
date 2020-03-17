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

 

   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

	<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">
	<!-- ��ǰ��������� Title -->
	<h2 align="center">�ǸŻ�ǰ ������Ȳ</h2>
	<div style="text-align: center;">�ǸŻ�ǰ ������Ȳ�Դϴ�.</div>
	<br><br><br><br>
	
	<h3 align="left">��ǰ �� : ���� </h3>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	
	<tr><th>�ǸűⰣ : 2019.08.10 - 2020.02.11</th></tr>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	</table>

   <div class="chart-container"  style="position: relative; height:200px; width:60vw">
      <canvas id="myChart"></canvas>
   </div>
   <button type="button" id="reData">������ ����</button>
   <button type="button" id="addData">������ �߰�</button>
   <button type="button" id="addDataSet">�����ͼ� �߰�</button>
   <button type="button" id="delData">������ ����</button>
   <button type="button" id="delDataset">�����ͼ� ����</button>

</div>
  <script>
   var ctx = document.getElementById('myChart');
     
   var config = {
      type: 'line',
      data: {
         labels: [ // Date Objects
        	'1��',
            '2��',
            '3��',
            '4��',
            '5��',
            '6��',            
         ],
         datasets: [{
            label: '�̽�����',
            backgroundColor: 'rgba(75, 192, 192, 1)',
            borderColor: 'rgba(75, 192, 192, 1)',
            fill: false,
            data: [
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50)
            ],
         }, {
            label: 'My Second dataset',
            backgroundColor: 'rgba(255, 99, 132, 1)',
            borderColor: 'rgba(255, 99, 132, 1)',
            fill: false,
            data: [
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50),
               Math.floor(Math.random() * 50)
            ],
         }]
      },
      options: {
         maintainAspectRatio: false,
         title: {
            text: 'Chart.js Time Scale'
         },
         scales: {
            yAxes: [{
               scaleLabel: {
                  display: true,
                  labelString: '1�ڽ� �� 3kg'
               }
            }]
         },
      }
   };
    
   //��Ʈ �׸���
   var myChart = new Chart(ctx, config);
     
   //������ ����
   document.getElementById('reData').onclick = function(){
      
      //�����ͼ� �� ��ŭ �ݺ�
      var dataset = config.data.datasets;
      for(var i=0; i<dataset.length; i++){
         console.log(dataset);
         //������ ���� ��ŭ �ݺ�
         var data = dataset[i].data;
         for(var j=0 ; j < data.length ; j++){
            data[j] = Math.floor(Math.random() * 50);
         }
      }
      
      myChart.update();   //��Ʈ ������Ʈ
   }
   
   //������ �߰�
   document.getElementById('addData').onclick = function(){
      
      //���߰�
      config.data.labels.push(config.data.labels.length+'��')
      
      //�����ͼ� �� ��ŭ �ݺ�
      var dataset = config.data.datasets;
      for(var i=0; i<dataset.length; i++){
         //�����ͼ��� ������ �߰�
         dataset[i].data.push(Math.floor(Math.random() * 50));
      }
      myChart.update();   //��Ʈ ������Ʈ
   }
   
   //�����ͼ� �߰�
   document.getElementById('addDataSet').onclick = function(){
      var color1 = Math.floor(Math.random() * 256);
      var color2 = Math.floor(Math.random() * 256);
      var color3 = Math.floor(Math.random() * 256);
      
      console.log(color1 + " " + color2 + " " + color3)
      
      var newDataset = {
         label: 'new Dataset'+config.data.datasets.length,
         borderColor : 'rgba('+color1+', '+color2+', '+color3+', 1)',
         backgroundColor : 'rgba('+color1+', '+color2+', '+color3+', 1)',
         data: [],
         fill: false
      }
      
      // newDataset�� ������ ����
      for (var i=0; i< config.data.labels.length; i++){
         var num = Math.floor(Math.random() * 50);
         newDataset.data.push(num);
      }
      
      // chart�� newDataset Ǫ��
      config.data.datasets.push(newDataset);
      
      myChart.update();   //��Ʈ ������Ʈ
   }
   
   //������ ����
   document.getElementById('delData').onclick = function(){
      
      config.data.labels.splice(-1,1);//�� ����
      
      //������ ����
      config.data.datasets.forEach(function(dataset) {
         dataset.data.pop();
      });
      
      myChart.update();   //��Ʈ ������Ʈ
   }
   
   //�����ͼ� ����
   document.getElementById('delDataset').onclick = function(){
      config.data.datasets.splice(-1,1);
      myChart.update();   //��Ʈ ������Ʈ
   }
   
  </script>
  </table>
</body>