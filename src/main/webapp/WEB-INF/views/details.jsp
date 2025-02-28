<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/details.css" type="text/css"
   media="screen" />
<!-- MD 부트스트랩 START -->
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/mdb/css/mdb.min.css" />

<!-- MD 부트스트랩 END -->
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

</head>
<style>
::-webkit-scrollbar {
   width: 10px; /* 세로축 스크롤바 폭 너비 */
   height: 20px; /* 가로축 스크롤바 폭 너비 */
}

::-webkit-scrollbar-thumb {
   background: rgb(42, 42, 42); /* 스크롤바 막대 색상 */
   border: 2px solid rgb(42, 42, 42); /* 스크롤바 막대 테두리 설정  */
   border-radius: 12px 12px 12px 12px;
}

::-webkit-scrollbar-thumb:hover {
   background-color: rgb(26, 26, 26);
}

::-webkit-scrollbar-track {
   background: rgb(26, 26, 26); /* 스크롤바 뒷 배경 색상 */
}

/* 모달 팝업 스타일 */

@property --rotate {
  syntax: "<angle>";
  initial-value: 132deg;
  inherits: false;
}

@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

body {
    font-family: 'NanumSquareNeo-Variable', sans-serif; /* 폰트 적용 */
}



</style>
<body>
   <div id="detailDiv">

      <div class="row" style="margin: 20px">

         <div class="col-5" id="profileBox">
            <h3>${playerDetail.playerName}</h3>
            <div id="imgBox" class="card" style="width: 490px; height: 490px; background: #191c29 !important;">
               <img class="imgPlayer glowing" alt=""
                  src="${playerDetail.playerImage}"
                  style="width: 500px; height: 500px;">
            </div>


         </div>

         <div class="col-7">
            <div class="row">
               <div class="col-6">

                  <div id="chartbox"
                     style="height: 250px; border: solid 2px rgb(26, 26, 26);">

                     <div id="myChart" style="height: 230px;">
                        <canvas id="RadarChart" style="height: 250px;"></canvas>
                     </div>

                  </div>
               </div>
               <div class="col-6">
                  <div id="centerBox">
                     <h3 id="info-center" style="font-size: 24px">특이사항</h3>
                  </div>
                  <div id="infobox">

                     <div>
                        <h3>${playerDetail.playerInfo}</h3>
                     </div>



                  </div>
               </div>
            </div>

            <div class="row">
               <div class="col-6">
                  <table border="1" style="width: 100%;">
                     <tr>
                        <th>선수번호</th>
                        <td>${playerDetail.playerId}</td>
                     </tr>
                     <tr>
                        <th>선수이름</th>
                        <td>${playerDetail.playerName}</td>
                     </tr>
                     <tr>
                        <th>포지션</th>
                        <td>${playerDetail.playerPosition}</td>
                     </tr>
                     <tr>
                        <th>소속팀</th>
                        <td>${playerDetail.playerTeam}</td>
                     </tr>
                     <tr>
                        <th>오버롤</th>
                        <td>${playerDetail.overall}</td>
                     </tr>
                     <tr>
                        <th>왼발</th>
                        <td>${playerDetail.leftfoot}</td>
                     </tr>
                     <tr>
                        <th>오른발</th>
                        <td>${playerDetail.rightfoot}</td>
                     </tr>
                  </table>
               </div>
               <div class="col-6">
                  <table border="1" style="width: 100%;">
                     <tr>
                        <th>주발</th>
                        <td>${playerDetail.mainfoot}</td>
                     </tr>
                     <tr>
                        <th>골결정력</th>
                        <td>${playerDetail.shooting}</td>
                     </tr>
                     <tr>
                        <th>속력</th>
                        <td>${playerDetail.sprinting}</td>
                     </tr>
                     <tr>
                        <th>볼컨트롤</th>
                        <td>${playerDetail.ballControl}</td>
                     </tr>
                     <tr>
                        <th>몸싸움</th>
                        <td>${playerDetail.physicality}</td>
                     </tr>
                     <tr>
                        <th>스태미너</th>
                        <td>${playerDetail.stamina}</td>
                     </tr>
                     <tr>
                        <th>패싱</th>
                        <td>${playerDetail.passing}</td>
                     </tr>

                  </table>
               </div>
            </div>

         </div>
      </div>


   </div>




   <script>
   // 차트 초기화 함수
   function initializeChart() {
      var ctx = document.getElementById("RadarChart").getContext("2d");
      var myChart = new Chart(ctx, {
         type: 'radar',
         data: {
            labels: ["골결정력", "몸싸움", "패스", "스테미나", "볼컨트롤", "속력"],
            datasets: [{
               label: '선수 능력치',
               backgroundColor: 'rgba(255, 99, 132, 0.2)',
               borderColor: 'rgba(255, 99, 132, 0.2)',
               borderWidth: 1,
               pointBackgroundColor: "rgba(255, 255, 255, 0)",
               pointBorderColor: "rgba(255, 255, 255, 0)",
               data: [${playerDetail.shooting}, ${playerDetail.physicality}, ${playerDetail.passing}, ${playerDetail.stamina}, ${playerDetail.ballControl}, ${playerDetail.sprinting}],
            }]
         },
         options: {
            animation: {
               duration: 2000,
               easing: 'easeInOutQuart'
            },
            scale: {
               ticks: {
                  fontColor: "rgba(0,0,0,0.7)",
                  fontStyle: 600,
                  beginAtZero: true,
                  min: 0,
                  max: 100,
                  stepSize: 20,
                  backdropColor: 'rgba(0, 0, 0, 0)'
               },
               pointLabels: {
                  fontSize: 17,
                  fontStyle: 600,
                  fontColor: "rgba(0,0,0,0.7)"
               },
            }
         }
      });
   }

   setTimeout( initializeChart, 200);


</script>

   <!-- MD 부트스트랩 START -->
   <script src="mdb/js/mdb.min.js"></script>
   <!-- MD 부트스트랩 END -->
</body>
</html>