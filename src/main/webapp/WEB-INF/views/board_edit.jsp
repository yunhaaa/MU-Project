<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- MD 부트스트랩 START -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/mdb/css/mdb.min.css" />
<!-- MD 부트스트랩 END -->
<link rel="stylesheet" href="css/muproject.css" type="text/css"
	media="screen" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

#stadium {
	background-image: url('https://ifh.cc/g/Z388lF.jpg');
	background-size: cover; /* 배경 이미지를 가로 및 세로로 꽉 채우도록 설정 */
	background-position: center; /* 배경 이미지를 가운데 정렬 */
	width: 100%;
	height: 100%; /* 뷰포트 높이에 맞게 설정 (전체 화면 높이로 설정) */
}

#hoverImg:hover img {
	transform: scale(1.2); /* 이미지를 1.2배 확대합니다. */
}

#hoverImg {
	width: 60px;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

p {
	font-size: 20px; /* 글자 크기 */ /* 글꼴 */
	font-weight: bolder;
	color: rgb(26, 26, 26); /* 글자 색상 */
	font-family: 'LINESeedKR-Bd', sans-serif;
}

@font-face {
	font-family: 'LINESeedKR-Bd';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

#stadium {
	position: relative;
}

@font-face {
	font-family: 'NanumSquareNeo-Variable';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'NanumSquareNeo-Variable', sans-serif; /* 폰트 적용 */
}

/* 모달 팝업 스타일 */
</style>
</head>
<body class="background-image"
	style="background-image: url('https://ifh.cc/g/l7OzhL.jpg'); background-attachment: fixed; background-size: cover; background-repeat: no-repeat;">

	<form name=form1 method="post" action="edit.do">
		<div>
			<div id="myModal" class="modal">
				<div class="modal-content" id="popupModalContent">
					<span class="close" onclick="closePopup()">&times;</span>
					<!-- 여기에 다른 JSP 페이지를 포함할 내용 추가 -->
					<div id="popupContent"></div>
				</div>
			</div>
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
							님 환영합니다 !</span> <a class="nav-link" href="logout.do">로그아웃</a>
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

			<!-- 축구장, 리스트 -->
			<!-- 축구장, 리스트 -->
			<!-- 축구장, 리스트 -->


			<div class="container mt-2">
				<div class="row justify-content-center">
					<div class="col-md-8">

						<div
							style=" background-color: rgb(200, 200, 200);">
							<div style="text-align: center;">
								<p class="card-text"
									style="background-color: #333; color: white; /* 텍스트의 색상을 흰색으로 변경 */ font-size: 16px;">제목</p>
								<p class="card-text">

									<input type="text" name="boardTitle"
										value="${editBoard.boardTitle}">
								</p>
							</div>
							<div style="text-align: center;">
								<h5
									style="background-color: #333; color: white; /* 텍스트의 색상을 흰색으로 변경 */ font-size: 16px;">본문</h5>
								<h5>
									<input type="text" name="article" value="${editBoard.article}"
										style="width: 800px;">
								</h5>

							</div>
							<div style="text-align: center;">작성자 : ${editBoard.usersId}</div>
						</div>


					</div>

				</div>
			</div>


			<div style="text-align: center;">
				<input type=submit value="수정하기" id="mubtn" class="btn btn-primary">
				<input type=button value="취소" onclick="history.go(-1);"
					class="btn btn-primary" id="mubtn">
			</div>
			<div style="opacity: 0.90; margin-top: 20px; margin-bottom: 20px">
				<div class="row">

					<div class="col-4" style="text-align: center;">

						<div id="stadium"
							style="position: relative; display: flex; flex-direction: row; flex-wrap: wrap;">
							<div id="hoverImg" class="player"
								style="left: 10%; top: 20%; z-index: 1;">
								<h3 class="place">LF</h3>
								<img alt="player1" id="player1Image"
									src="${boardPlayer.get(0).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(0).playerName}</p>
							</div>
							<div id="hoverImg" class="player"
								style="left: 30%; top: 20%; z-index: 1;">
								<h3 class="place">RF</h3>
								<img alt="player2" id="player2Image"
									src="${boardPlayer.get(1).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(1).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LM</h3>
								<img alt="player3" id="player3Image"
									src="${boardPlayer.get(2).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(2).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LCM</h3>
								<img alt="player4" id="player4Image"
									src="${boardPlayer.get(3).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(3).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RCM</h3>
								<img alt="player5" id="player5Image"
									src="${boardPlayer.get(4).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(4).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RM</h3>
								<img alt="player6" id="player6Image"
									src="${boardPlayer.get(5).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(5).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LWB</h3>
								<img alt="player7" id="player7Image"
									src="${boardPlayer.get(6).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(6).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LCB</h3>
								<img alt="player8" id="player8Image"
									src="${boardPlayer.get(7).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(7).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RCB</h3>
								<img alt="player9" id="player9Image"
									src="${boardPlayer.get(8).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(8).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RWB</h3>
								<img alt="player10" id="player10Image"
									src="${boardPlayer.get(9).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(9).playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">GK</h3>
								<img alt="player11" id="player11Image"
									src="${boardPlayer.get(10).playerImage}"
									style="width: 50px; height: 50px;">
								<p>${boardPlayer.get(10).playerName}</p>
							</div>



						</div>
					</div>
					<div class="col-8">
						<select id="formationSelect" onchange="changeFormation()"
							class="pl" style="display: none;">
							<option value="formation1">4-4-2 포메이션</option>
							<option value="formation2">4-3-3 포메이션</option>
							<option value="formation3">4-2-3-1 포메이션</option>
						</select>


						<table border="1" style="width: 100%; margin-right: 20px;">
							<tr>
								<th>선수번호</th>
								<th>사 진</th>
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
								<th>선수정보</th>
							</tr>

							<!-- selectedPlayers가 비어있을 때 10개의 빈 tr 요소 생성 -->
							<c:forEach begin="0" end="10" varStatus="loop">
								<tr>
									<td>${boardPlayer.get(loop.index).playerId}</td>
									<td><img alt=""
										src="${boardPlayer.get(loop.index).playerImage}"
										style="width: 50px; height: 50px;"></td>
									<td>${boardPlayer.get(loop.index).playerName}</td>
									<td>${boardPlayer.get(loop.index).playerPosition}</td>
									<td>${boardPlayer.get(loop.index).playerTeam}</td>
									<td>${boardPlayer.get(loop.index).overall}</td>
									<td>${boardPlayer.get(loop.index).leftfoot}</td>
									<td>${boardPlayer.get(loop.index).rightfoot}</td>
									<td>${boardPlayer.get(loop.index).mainfoot}</td>
									<td>${boardPlayer.get(loop.index).sprinting}</td>
									<td>${boardPlayer.get(loop.index).ballControl}</td>
									<td>${boardPlayer.get(loop.index).physicality}</td>
									<td>${boardPlayer.get(loop.index).stamina}</td>
									<td>${boardPlayer.get(loop.index).passing}</td>
									<td><button type="button" id="popupButton"
											class="btn btn-primary"
											onclick="openPopup1(${boardPlayer.get(loop.index).playerId})">상세정보</button></td>
								</tr>
							</c:forEach>
						</table>
						<div style="text-align: center; margin-top: 20px;">
							<a href="board.do" class="btn btn-primary" id="mubtn">게시판
								목록으로</a>
						</div>
					</div>
				</div>
			</div>


			<!-- 축구장, 리스트 -->
			<!-- 축구장, 리스트 -->
			<!-- 축구장, 리스트 -->






			<input type=hidden id="boardId" name="boardId"
				value="${editBoard.boardId}"> <input type=hidden
				name="action" value="update">


		</div>
	</form>
	<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
	<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
	<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
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

	<!-- MD 부트스트랩 START -->
	<script src="mdb/js/mdb.min.js"></script>
	<!-- MD 부트스트랩 END -->

	<script>
	


	   function openPopup1(playerId) {
	       document.getElementById("myModal").style.display = "block";
	     // AJAX를 사용하여 popup_player.jsp를 로드하고 모달 팝업에 표시
	     var overlay = document.getElementById("myModal");
	     $.get('details.do?playerId=' + playerId, function(data) {
	        $('#popupContent').html(data);
	        overlay.style.display = "block";
	     });
	  }
	  // 상세정보 팝업 닫기
	  function closePopup() {
	     document.getElementById("myModal").style.display = "none";
	  }

	  
	  
	  
	  
	  function getCurrentFormation() {
	       $.ajax({
	           type: "GET", // 또는 POST, 서버에서 설정한 메소드와 일치해야 합니다.
	           url: "http://172.168.10.119:9000/muprojectservlet/getFormationArticle", 
	           success: function(response) {
	               // 서버에서 받은 값을 sessionStorage에 저장
	               sessionStorage.setItem('currentFormation', response);
	               console.log("현재 포메이션: " + response);
	           },
	           error: function() {
	               console.error("포메이션 가져오기 실패");
	           }
	       });
	   }

	  
	  
	  
	  
	  
	  
	  window.addEventListener('load', function () {
	      getCurrentFormationArticle(function () {
	          // getCurrentFormation 함수가 완료된 후 실행될 코드
	          var currentFormation = sessionStorage.getItem('currentFormation');
	          console.log('하이');
	          console.log(currentFormation);
	          if (currentFormation === '4-2-3-1') {
	              document.getElementById('formationSelect').value = 'formation3';
	          } else if (currentFormation === '4-3-3') {
	              document.getElementById('formationSelect').value = 'formation2';
	          } else if (currentFormation === '4-4-2') {
	              document.getElementById('formationSelect').value = 'formation1';
	          }

	          changeFormation();
	      });
	  });

	  
	  
	  
	  function getCurrentFormationArticle(callback) {
	      $.ajax({
	          type: "GET",
	          url: "http://172.168.10.119:9000/muprojectservlet/getFormationArticle",
	          success: function (response) {
	              console.log(response); // response를 출력해서 실제 서버 응답을 확인해보세요.
	              sessionStorage.setItem('currentFormation', response); // 문자열로 저장
	              console.log("현재 포메이션: " + response);

	              // Ajax 요청 완료 후 콜백 함수 실행
	              if (typeof callback === 'function') {
	                  callback();
	              }
	          },
	          error: function () {
	              console.error("포메이션 가져오기 실패");
	              changeFormation()
	          }
	      });
	  }




	//포메이션 설정 시작
	//포메이션 설정 시작
	//포메이션 설정 시작
	function changeFormation() {
	const selectElement = document.getElementById('formationSelect');
	const stadium = document.getElementById('stadium');
	const players = stadium.querySelectorAll('.player');
	const places = stadium.querySelectorAll('.place');
	const selectedFormation = selectElement.value;

		// 선택된 formation에 따라 이미지 위치를 조절
		if (selectedFormation === 'formation1') {
		    // 4-4-2에 맞게 이미지 위치를 조절
		    console.log("포메이션1");

		    
		            places[0].textContent = 'LS';
		    places[1].textContent = 'RS';
		    places[2].textContent = 'LM';
		    places[3].textContent = 'LCM';
		    places[4].textContent = 'RCM';
		    places[5].textContent = 'RM';
		    places[6].textContent = 'LWB';
		    places[7].textContent = 'LCB';
		    places[8].textContent = 'RCB';
		    places[9].textContent = 'RWB';
		    places[10].textContent = 'GK';
		    
		    
		    
		   
		
		    players[0].style.cssText = 'position: absolute; left: 29%; top: 20%;';
		    players[1].style.cssText = 'position: absolute; left: 58%; top: 20%;';
		    players[2].style.cssText = 'position: absolute; left: 2%; top: 37%;';
		    players[3].style.cssText = 'position: absolute; left: 29%; top: 40%;';
		    players[4].style.cssText = 'position: absolute; left: 58%; top: 40%;';
		    players[5].style.cssText = 'position: absolute; left: 85%; top: 37%;';
		    players[6].style.cssText = 'position: absolute; left: 2%; top: 57%;';
		    players[7].style.cssText = 'position: absolute; left: 29%; top:60%;';
		    players[8].style.cssText = 'position: absolute; left: 58%; top: 60%;';
		    players[9].style.cssText = 'position: absolute; left: 85%; top: 57%;';
		    players[10].style.cssText = 'position: absolute; left: 44%; top: 80%;';
		 
		    
		} else if (selectedFormation === 'formation2') {

		    console.log("포메이션2");
		    places[1].textContent = 'ST';
		    places[0].textContent = 'LF';
		    places[2].textContent = 'RF';
		    places[3].textContent = 'LCM';
		    places[4].textContent = 'CM';
		    places[5].textContent = 'RCM';
		    places[6].textContent = 'LB';
		    places[7].textContent = 'CB';
		    places[8].textContent = 'CB';
		    places[9].textContent = 'RB';
		    places[10].textContent = 'GK'; 
		    
		    players[0].style.cssText = 'position: absolute; left: 20%; top: 20%;';
		    players[1].style.cssText = 'position: absolute; left: 43%; top: 15%;';
		    players[2].style.cssText = 'position: absolute; left: 66%; top: 20%;';
		    players[3].style.cssText = 'position: absolute; left: 20%; top: 36%;';
		    players[4].style.cssText = 'position: absolute; left: 43%; top: 40%;';
		    players[5].style.cssText = 'position: absolute; left: 66%; top: 36%;';
		    players[6].style.cssText = 'position: absolute; left: 2%; top: 57%;';
		    players[7].style.cssText = 'position: absolute; left: 29%; top:60%;';
		    players[8].style.cssText = 'position: absolute; left: 58%; top: 60%;';
		    players[9].style.cssText = 'position: absolute; left: 85%; top: 57%;';
		    players[10].style.cssText = 'position: absolute; left: 44%; top: 80%;';
		} else if (selectedFormation === 'formation3') {

		    console.log("포메이션3");
		    places[0].textContent = 'ST';
		    places[1].textContent = 'LAM';
		    places[2].textContent = 'CAM';
		    places[3].textContent = 'RAM';
		    places[4].textContent = 'LDM';
		    places[5].textContent = 'RDM';
		    places[6].textContent = 'LB';
		    places[7].textContent = 'CB';
		    places[8].textContent = 'CB';
		    places[9].textContent = 'RB';
		    places[10].textContent = 'GK';
		    
		    players[0].style.cssText = 'position: absolute; left: 43%; top: 6%;';
		    players[1].style.cssText = 'position: absolute; left: 20%; top: 20%;';
		    players[2].style.cssText = 'position: absolute; left: 43%; top: 23%;';
		    players[3].style.cssText = 'position: absolute; left: 66%; top: 20%;';
		    players[4].style.cssText = 'position: absolute; left: 29%; top: 40%;';
		    players[5].style.cssText = 'position: absolute; left: 58%; top: 40%;';
		    players[6].style.cssText = 'position: absolute; left: 2%; top: 57%;';
		    players[7].style.cssText = 'position: absolute; left: 29%; top:60%;';
		    players[8].style.cssText = 'position: absolute; left: 58%; top: 60%;';
		    players[9].style.cssText = 'position: absolute; left: 85%; top: 57%;';
		    players[10].style.cssText = 'position: absolute; left: 44%; top: 80%;';
		}else{
			
		    places[0].textContent = 'ST';
		    places[1].textContent = 'LAM';
		    places[2].textContent = 'CAM';
		    places[3].textContent = 'RAM';
		    places[4].textContent = 'LDM';
		    places[5].textContent = 'RDM';
		    places[6].textContent = 'LB';
		    places[7].textContent = 'CB';
		    places[8].textContent = 'CB';
		    places[9].textContent = 'RB';
		    places[10].textContent = 'GK';
		    
		    players[0].style.cssText = 'position: absolute; left: 43%; top: 6%;';
		    players[1].style.cssText = 'position: absolute; left: 20%; top: 20%;';
		    players[2].style.cssText = 'position: absolute; left: 43%; top: 23%;';
		    players[3].style.cssText = 'position: absolute; left: 66%; top: 20%;';
		    players[4].style.cssText = 'position: absolute; left: 29%; top: 40%;';
		    players[5].style.cssText = 'position: absolute; left: 58%; top: 40%;';
		    players[6].style.cssText = 'position: absolute; left: 2%; top: 57%;';
		    players[7].style.cssText = 'position: absolute; left: 29%; top:60%;';
		    players[8].style.cssText = 'position: absolute; left: 58%; top: 60%;';
		    players[9].style.cssText = 'position: absolute; left: 85%; top: 57%;';
		    players[10].style.cssText = 'position: absolute; left: 44%; top: 80%;';
			
		}
	  
	  
	}	
	
	
	</script>

</body>
</html>