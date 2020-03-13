<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 <jsp:include page="sellerLeft.jsp"/>
 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart.js</title>
<head>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
</head>
<body>
	<div style="width: 60%; float: left; text-align: center;">
	<!-- 상품등록페이지 Title -->
	<h2 align="center">판매상품 매출현황</h2>
	<div style="text-align: center;">판매상품 매출현황입니다.</div>
	<br><br><br>
	

   <div class="chart-container" style="position: relative; height:200px; width:60vw">
      <canvas id="myChart"></canvas>
   </div>
   <button type="button" id="reData">데이터 변경</button>
   <button type="button" id="addData">데이터 추가</button>
   <button type="button" id="addDataSet">데이터셋 추가</button>
   <button type="button" id="delData">데이터 삭제</button>
   <button type="button" id="delDataset">데이터셋 삭제</button>

</div>
  <script>
   var ctx = document.getElementById('myChart');
     
   var config = {
      type: 'line',
      data: {
         labels: [ // Date Objects
        	'1월',
            '2월',
            '3월',
            '4월',
            '5월',
            '6월',            
         ],
         datasets: [{
            label: '싱싱포도',
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
                  labelString: '1박스 당 3kg'
               }
            }]
         },
      }
   };
    
   //차트 그리기
   var myChart = new Chart(ctx, config);
     
   //데이터 변경
   document.getElementById('reData').onclick = function(){
      
      //데이터셋 수 만큼 반복
      var dataset = config.data.datasets;
      for(var i=0; i<dataset.length; i++){
         console.log(dataset);
         //데이터 갯수 만큼 반복
         var data = dataset[i].data;
         for(var j=0 ; j < data.length ; j++){
            data[j] = Math.floor(Math.random() * 50);
         }
      }
      
      myChart.update();   //차트 업데이트
   }
   
   //데이터 추가
   document.getElementById('addData').onclick = function(){
      
      //라벨추가
      config.data.labels.push(config.data.labels.length+'월')
      
      //데이터셋 수 만큼 반복
      var dataset = config.data.datasets;
      for(var i=0; i<dataset.length; i++){
         //데이터셋의 데이터 추가
         dataset[i].data.push(Math.floor(Math.random() * 50));
      }
      myChart.update();   //차트 업데이트
   }
   
   //데이터셋 추가
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
      
      // newDataset에 데이터 삽입
      for (var i=0; i< config.data.labels.length; i++){
         var num = Math.floor(Math.random() * 50);
         newDataset.data.push(num);
      }
      
      // chart에 newDataset 푸쉬
      config.data.datasets.push(newDataset);
      
      myChart.update();   //차트 업데이트
   }
   
   //데이터 삭제
   document.getElementById('delData').onclick = function(){
      
      config.data.labels.splice(-1,1);//라벨 삭제
      
      //데이터 삭제
      config.data.datasets.forEach(function(dataset) {
         dataset.data.pop();
      });
      
      myChart.update();   //차트 업데이트
   }
   
   //데이터셋 삭제
   document.getElementById('delDataset').onclick = function(){
      config.data.datasets.splice(-1,1);
      myChart.update();   //차트 업데이트
   }
   
  </script>
</body>