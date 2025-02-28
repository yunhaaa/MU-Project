<%@page import="muproject.vo.Players"%>
<%@page import="muproject.dao.MuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/muproject.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/list_every_player.css" type="text/css"
	media="screen" />
<!-- MD 부트스트랩 START -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/mdb/css/mdb.min.css" />
<!-- MD 부트스트랩 END -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
.background-image {
	background-image:
		url('https://p4.wallpaperbetter.com/wallpaper/196/606/477/champions-league-stadium-football-sports-game-soccer-stadium-wallpaper-preview.jpg');
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}


@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

/* 나머지 CSS 스타일 코드 */

body {
    font-family: 'NanumSquareNeo-Variable', sans-serif; /* 폰트 적용 */
}
</style>




</head>
<body class="background-image">


	<div>
		<form method="get" action="mainFormationReset.do">


			<div>
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<nav class="navbar navbar-expand-lg navbar-light"
					id="backgroundblack">
					<!-- Container wrapper -->
					<div class="container-fluid">
						<!-- Toggle button -->
						<button class="navbar-toggler" type="button"
							data-mdb-toggle="collapse"
							data-mdb-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fas fa-bars"></i>
						</button>

						<!-- Collapsible wrapper -->
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- Navbar brand -->
							<!-- Left links -->
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link" href="main.do">홈으로</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="board.do">게시판</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="listEveryPlayer.do">선수영입하기</a></li>
								</li>
							</ul>
							<!-- Left links -->
						</div>
						<!-- Collapsible wrapper -->

						<!-- Right elements -->
						<div class="d-flex align-items-center">
							<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
								src="https://ifh.cc/g/ddphYM.png" height="15" alt="MU Logo"
								loading="lazy" />
							</a> <a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
								src="https://ifh.cc/g/1tX0LQ.png" height="15" alt="MU Logo"
								loading="lazy" />
							</a> <a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
								src="https://ifh.cc/g/yhC5dl.png" height="15" alt="MU Logo"
								loading="lazy" />
							</a> <a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
								src="https://ifh.cc/g/714pXd.png" height="15" alt="MU Logo"
								loading="lazy" />
							</a>
						</div>
						<!-- Right elements -->
					</div>
					<!-- Container wrapper -->
				</nav>

				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->


				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->

				<!-- Navbar -->
				<nav class="navbar navbar-expand-lg navbar-light">
					<!-- Container wrapper -->
					<div class="container-fluid">
						<!-- Toggle button -->
						<button class="navbar-toggler" type="button"
							data-mdb-toggle="collapse"
							data-mdb-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fas fa-bars"></i>
						</button>

						<!-- Collapsible wrapper -->
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- Navbar brand -->
							<a class="navbar-brand mt-2 mt-lg-0" href="main.do"> <img
								src="https://ifh.cc/g/xx5zwv.png" height="50" alt="MU Logo"
								loading="lazy" />
							</a> <span>맨체스터 유나이티드 베스트 11 선정하기</span>
						</div>
						<!-- Collapsible wrapper -->

						<!-- Right elements -->
						<div class="d-flex align-items-center">
							<span style="margin-right: 70px;"><%=session.getAttribute("nickname")%>,
								님 환영합니다 !</span> <a class="nav-link" href="logout.do"
								style="color: white; font-weight: bold; font-size: 18px;">로그아웃</a>
							<!-- Avatar -->
							<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
								href="#" id="navbarDropdownMenuAvatar" role="button"
								data-mdb-toggle="dropdown" aria-expanded="false"> <img
								src="https://ifh.cc/g/1v2h5z.png" class="rounded-circle"
								height="25" alt="Black and White Portrait of a Man"
								loading="lazy" />
							</a>
						</div>
						<!-- Right elements -->
					</div>
					<!-- Container wrapper -->
				</nav>
				<!-- Navbar -->
				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
				<!-- 빨간색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->

				<!-- 선수 목록 -->
				<!-- 선수 목록 -->




				<table border="1" style="opacity: 0.90;">
					<tr>
						<th>선수번호</th>
						<th>사진</th>
						<th>이 름</th>
						<th>포지션</th>
						<th>소속팀</th>
						<th>오버롤</th>
						<th>왼발</th>
						<th>오른발</th>
						<th>주발</th>
						<th>속력</th>
						<th>볼컨트롤</th>
						<th>몸싸움</th>
						<th>스태미너</th>
						<th>패싱</th>
						<th>영입</th>
						<th>선수정보</th>
					</tr>
					<c:forEach var="pl" items="${playersList}">
						<tr onclick="toggleCheckbox(this)">
							<td>${pl.playerId}</td>
							<td><img alt="" src="${pl.playerImage}"
								style="width: 50px; height: 50px;"></td>
							<td>${pl.playerName}</td>
							<td>${pl.playerPosition}</td>
							<td>${pl.playerTeam}</td>
							<td>${pl.overall}</td>
							<td>${pl.leftfoot}</td>
							<td>${pl.rightfoot}</td>
							<td>${pl.mainfoot}</td>
							<td>${pl.sprinting}</td>
							<td>${pl.ballControl}</td>
							<td>${pl.physicality}</td>
							<td>${pl.stamina}</td>
							<td>${pl.passing}</td>
							<td><input type="checkbox" name="item"
								value="${pl.playerId}"></td>
							<td><button type="button" id="popupButton"
									class="btn btn-primary" onclick="openPopup(${pl.playerId})">상세정보</button></td>
						</tr>
					</c:forEach>
				</table>
				<div id="btns">
					<input type="submit" value="영입" class="btn btn-primary" id="mubtn"
						style="margin-bottom: 20px; margin-top: 20px;"> <a
						href="main.do" class="btn" id="mubtn" style="margin-bottom: 20px;">영입
						취소</a>

				</div>
		</form>

		<!-- 선수 목록 -->
		<!-- 선수 목록 -->
		<!-- 선수 목록 -->
		<div id="myModal" class="modal">
			<div class="modal-content" id="popupModalContent">
				<span class="close" onclick="closePopup()">&times;</span>
				<!-- 여기에 다른 JSP 페이지를 포함할 내용 추가 -->
				<div id="popupContent"></div>
			</div>
		</div>
		<div id="btns"></div>

		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->

		<footer class=" text-center text-white" id="footergray">
			<!-- Grid container -->
			<div class="container p-4 pb-0">
				<!-- Section: Social media -->
				<section class="mb-4">
					<!-- Facebook -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-facebook-f"></i></a>

					<!-- Twitter -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-twitter"></i></a>

					<!-- Google -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-google"></i></a>

					<!-- Instagram -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-instagram"></i></a>

					<!-- Linkedin -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-linkedin-in"></i></a>

					<!-- Github -->
					<a class="btn btn-outline-light btn-floating m-1" href="#!"
						role="button"><i class="fab fa-github"></i></a>
				</section>
				<!-- Section: Social media -->
			</div>
			<!-- Grid container -->

			<!-- Copyright -->
			<div class="text-center p-3"
				style="background-color: rgba(26, 26, 26);">
				<a class="text-white" href="https://mdbootstrap.com/">2023
					Manchester United Ltd</a>
			</div>
			<!-- Copyright -->
		</footer>

		<!-- 푸터 끝이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 끝이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 끝이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 끝이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 끝이유~~~~~~~~~~~~~~~~~~ -->
	</div>
	</div>
	<!-- MD 부트스트랩 START -->
	<script src="mdb/js/mdb.min.js"></script>
	<!-- MD 부트스트랩 END -->
	<script type="text/javascript">
      // 팝업 열기
// 팝업 열기
function openPopup(playerId) {
     document.getElementById("myModal").style.display = "block";
   // AJAX를 사용하여 popup_player.jsp를 로드하고 모달 팝업에 표시
   var overlay = document.getElementById("myModal");
   $.get('details.do?playerId=' + playerId, function(data) {
      $('#popupContent').html(data);
      overlay.style.display = "block";
      //initializeChart(); // 차트 초기화 함수를 이 위치로 이동
   });
}
var checkboxes = document.getElementsByName('item');
var minChecked = 11;
var maxChecked = 11;
var recruitButton = document.getElementById('mubtn');

// for (var i = 0; i < checkboxes.length; i++) {
//     checkboxes[i].addEventListener('change', function () {
//         var checkedCount = 0;
//         for (var j = 0; j < checkboxes.length; j++) {
//             if (checkboxes[j].checked) {
//                 checkedCount++;
//             }
//         }

//         if (checkedCount > maxChecked) {
//             this.checked = false; // 더 이상 선택할 수 없도록 함
//         }
//     });
// }

for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].addEventListener('change', function () {
        var checkedCount = 0;
        for (var j = 0; j < checkboxes.length; j++) {
            if (checkboxes[j].checked) {
                checkedCount++;
            }
        }

        if (checkedCount < minChecked || checkedCount > maxChecked) {
            recruitButton.disabled = true; // 선택된 항목 수가 범위 밖이면 버튼 비활성화
        } else {
            recruitButton.disabled = false; // 선택된 항목 수가 범위 내이면 버튼 활성화
        }
    });
}
      // 모달 팝업 닫기
      function closePopup() {
         document.getElementById("myModal").style.display = "none";
      }

      function toggleCheckbox(row) {
    	  var checkbox = row.querySelector('input[type="checkbox"]');
    	  if (checkbox) {
    	    checkbox.checked = !checkbox.checked; // 체크박스 토글

    	    // change 이벤트 명시적으로 발생시킴
    	    var event = new Event('change', {
    	      'bubbles': true,
    	      'cancelable': true
    	    });
    	    checkbox.dispatchEvent(event);
    	  }
    	}


      
   </script>
</body>
</html>