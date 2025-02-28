<%@page import="muproject.vo.MyTeam"%>
<%@page import="muproject.dao.MuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manchester United Football Club</title>
<!-- MD 부트스트랩 START -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/mdb/css/mdb.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- MD 부트스트랩 END -->
<link rel="stylesheet" href="css/muproject.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/main.css" type="text/css"
	media="screen" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Latest compiled and minified CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script>

<style>
/* 모달 팝업 스타일 */
/* 모달 팝업 스타일 */
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

::-webkit-scrollbar {
	width: 10px; /* 세로축 스크롤바 폭 너비 */
	height: 20px; /* 가로축 스크롤바 폭 너비 */
}

::-webkit-scrollbar-thumb {
	background: rgb(42, 42, 42); /* 스크롤바 막대 색상 */
	border: 2px solid rgb(42, 42, 42); /* 스크롤바 막대 테두리 설정  */
	border-radius: 12px 12px 12px 12px;
}

::-webkit-scrollbar-track {
	background: rgb(26, 26, 26); /* 스크롤바 뒷 배경 색상 */
}

.pl {
	width: 200px;
	border: 3px solid rgb(42, 42, 42);
	box-sizing: border-box;
	border-radius: 10px;
	padding: 12px 13px;
	font-family: 'Roboto';
	font-style: normal;
	font-weight: bolder;
	font-size: 18px;
	line-height: 16px;
}

.pl:focus {
	border: 1px solid rgbrgb(26, 26, 26);
	box-sizing: border-box;
	border-radius: 10px;
	outline: 1px solid rgbrgb(26, 26, 26);
	border-radius: 10px;
}

/* 모달 팝업 닫기 버튼 스타일 */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold; ::
	-webkit-scrollbar-thumb: hover{
   background-color: rgb(26, 26, 26);
}

#stadium {
	position: relative;
}

.player {
	width: 100px;
	height: 100px;
	background-color: lightgray;
	text-align: center;
	margin: 10px;
	position: absolute;
}

#buttonBox {
	margin-top: 10px;
	margin-bottom: 10px;
}

p {
	font-size: 20px; /* 글자 크기 */ /* 글꼴 */
	font-weight: bolder;
	color: rgb(26, 26, 26); /* 글자 색상 */
	font-family: 'NanumSquareNeo-Variable', sans-serif; /* 폰트 적용 */
}

@font-face {
	font-family: 'LINESeedKR-Bd';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

@font-face {
	font-family: 'NanumSquareNeo-Variable';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

/* 나머지 CSS 스타일 코드 */
body {
	font-family: 'NanumSquareNeo-Variable', sans-serif; /* 폰트 적용 */
}

/* 모달 팝업 스타일 */
</style>

<!-- MD 부트스트랩 END -->

</head>
<body class="background-image"
	style="background-image: url('https://p4.wallpaperbetter.com/wallpaper/911/928/871/football-stadium-stadium-manchester-united-wallpaper-preview.jpg'); background-attachment: fixed; background-size: cover; background-repeat: no-repeat;">

	<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
	<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
	<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
	<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
	<!-- 검은색 배너ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
	<nav class="navbar navbar-expand-lg navbar-light" id="backgroundblack">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
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
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
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
					height="25" alt="Black and White Portrait of a Man" loading="lazy" />
				</a>
			</div>
			<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->

	<div id="mainTitle">
		<h1 style="color: white;">더보기 리그 1위.</h1>
		<p style="color: white;">멘체스터 유나이티드의 홈페이지입니다.</p>
	</div>
	<div style="opacity: 0.90;">
		<div class="row">

			<div class="col-4" style="text-align: center;">

				<div id="stadium"
					style="position: relative; display: flex; flex-direction: row; flex-wrap: wrap;">
					<div onclick="openPopup(1)" id="hoverImg" class="player"
						style="left: 10%; top: 20%; z-index: 1;">
						<h3 class="place">LF</h3>
						<img alt="player1" id="player1Image"
							src="${Playerone.playerImage}" style="width: 50px; height: 50px;">
						<p>${Playerone.playerName}</p>
						<input type="hidden" id="hiddenInput1"
							value="${Playerone.playerId}">
					</div>
					<div onclick="openPopup(2)" id="hoverImg" class="player"
						style="left: 30%; top: 20%; z-index: 1;">
						<h3 class="place">RF</h3>
						<img alt="player2" id="player2Image"
							src="${Playertwo.playerImage}" style="width: 50px; height: 50px;">
						<p>${Playertwo.playerName}</p>
						<input type="hidden" id="hiddenInput2"
							value="${Playertwo.playerId}">
					</div>
					<div onclick="openPopup(3)" id="hoverImg" class="player">
						<h3 class="place">LM</h3>
						<img alt="player3" id="player3Image"
							src="${Playerthree.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playerthree.playerName}</p>
						<input type="hidden" id="hiddenInput3"
							value="${Playerthree.playerId}">
					</div>
					<div onclick="openPopup(4)" id="hoverImg" class="player">
						<h3 class="place">LCM</h3>
						<img alt="player4" id="player4Image"
							src="${Playerfour.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playerfour.playerName}</p>
						<input type="hidden" id="hiddenInput4"
							value="${Playerfour.playerId}">
					</div>
					<div onclick="openPopup(5)" id="hoverImg" class="player">
						<h3 class="place">RCM</h3>
						<img alt="player5" id="player5Image"
							src="${Playerfive.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playerfive.playerName}</p>
						<input type="hidden" id="hiddenInput5"
							value="${Playerfive.playerId}">
					</div>
					<div onclick="openPopup(6)" id="hoverImg" class="player">
						<h3 class="place">RM</h3>
						<img alt="player6" id="player6Image"
							src="${Playersix.playerImage}" style="width: 50px; height: 50px;">
						<p>${Playersix.playerName}</p>
						<input type="hidden" id="hiddenInput6"
							value="${Playersix.playerId}">
					</div>
					<div onclick="openPopup(7)" id="hoverImg" class="player">
						<h3 class="place">LWB</h3>
						<img alt="player7" id="player7Image"
							src="${Playerseven.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playerseven.playerName}</p>
						<input type="hidden" id="hiddenInput7"
							value="${Playerseven.playerId}">
					</div>
					<div onclick="openPopup(8)" id="hoverImg" class="player">
						<h3 class="place">LCB</h3>
						<img alt="player8" id="player8Image"
							src="${Playereight.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playereight.playerName}</p>
						<input type="hidden" id="hiddenInput8"
							value="${Playereight.playerId}">
					</div>
					<div onclick="openPopup(9)" id="hoverImg" class="player">
						<h3 class="place">RCB</h3>
						<img alt="player9" id="player9Image"
							src="${Playernine.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playernine.playerName}</p>
						<input type="hidden" id="hiddenInput9"
							value="${Playernine.playerId}">
					</div>
					<div onclick="openPopup(10)" id="hoverImg" class="player">
						<h3 class="place">RWB</h3>
						<img alt="player10" id="player10Image"
							src="${Playerten.playerImage}" style="width: 50px; height: 50px;">
						<p>${Playerten.playerName}</p>
						<input type="hidden" id="hiddenInput10"
							value="${Playerten.playerId}">
					</div>
					<div onclick="openPopup(11)" id="hoverImg" class="player">
						<h3 class="place">GK</h3>
						<img alt="player11" id="player11Image"
							src="${Playereleven.playerImage}"
							style="width: 50px; height: 50px;">
						<p>${Playereleven.playerName}</p>
						<input type="hidden" id="hiddenInput11"
							value="${Playereleven.playerId}">
					</div>

				</div>
			</div>
			<div class="col-8">
				<select id="formationSelect" onchange="changeFormation()" class="pl">
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

					<c:choose>
						<c:when test="${empty selectedPlayers}">
							<!-- selectedPlayers가 비어있을 때 10개의 빈 tr 요소 생성 -->
							<c:forEach begin="1" end="11" varStatus="loop">
								<tr>
									<td>${loop.index}</td>
									<td><img alt=""
										src="https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"
										style="width: 50px; height: 50px;"></td>
									<td>홍길동</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td>?</td>
									<td><button class="btn btn-primary" id="mubtn">상세
											정보</button></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<!-- selectedPlayers가 비어있지 않을 때 실제 데이터로 tr 요소 생성 -->
							<c:forEach var="sp" items="${selectedPlayers}" varStatus="loop">
								<tr>
									<td>${sp.playerId}</td>
									<td><img alt="" src="${sp.playerImage}"
										style="width: 50px; height: 50px;"></td>
									<td>${sp.playerName}</td>
									<td>${sp.playerPosition}</td>
									<td>${sp.playerTeam}</td>
									<td>${sp.overall}</td>
									<td>${sp.leftfoot}</td>
									<td>${sp.rightfoot}</td>
									<td>${sp.mainfoot}</td>
									<td>${sp.sprinting}</td>
									<td>${sp.ballControl}</td>
									<td>${sp.physicality}</td>
									<td>${sp.stamina}</td>
									<td>${sp.passing}</td>
									<td><button type="button" id="popupButton"
											class="btn btn-primary" onclick="openPopup1(${sp.playerId})">상세정보</button></td>
								</tr>
							</c:forEach>

							<c:choose>
								<c:when test="${selectedPlayers.size() < 11}">
									<!-- selectedPlayers가 11명 미만인 경우, 빈 요소를 추가 -->
									<c:forEach begin="1" end="${11 - selectedPlayers.size()}"
										varStatus="loop">
										<tr>
											<td>0</td>
											<td><img alt=""
												src="https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"
												style="width: 50px; height: 50px;"></td>
											<td>홍길동</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td>?</td>
											<td><button class="btn btn-primary" id="mubtn">상세
													정보</button></td>
										</tr>
									</c:forEach>
								</c:when>
							</c:choose>

						</c:otherwise>
					</c:choose>


				</table>
				<div style="text-align: center;" id="buttonBox">
					<a href="board.do" class="btn btn-primary" id="mubtn">게시판</a> <a
						href="listEveryPlayer.do" class="btn btn-primary" id="mubtn">선수영입하기</a>




					<form action="save.do" method="get" style="display: inline;"
						id="saveForm"></form>

					<button class="btn btn-primary" id="saveSqurd"
						style="background-color: rgb(199, 1, 1); color: white;">스쿼드
						저장</button>


				</div>

			</div>


		</div>
	</div>

	<div id="myModal" class="modal">
		<div class="modal-content" id="popupModalContent">
			<span class="close" onclick="closePopup()">&times;</span>
			<!-- 여기에 다른 JSP 페이지를 포함할 내용 추가 -->
			<div id="popupContent"></div>
		</div>
	</div>

	<!-- MD 부트스트랩 START -->
	<script src="mdb/js/mdb.min.js"></script>
	<!-- MD 부트스트랩 END -->
	<script type="text/javascript"></script>



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





	<!-- MD 부트스트랩 START -->
	<script src="mdb/js/mdb.min.js"></script>
	<!-- MD 부트스트랩 END -->
	<script type="text/javascript">
   var Formation;

     $(document).ready(function () {
       $("#saveSqurd").click(function (event) {
         // AJAX를 이용하여 서버에서 세션 데이터를 가져옴
         console.log('SAVEfORM');
         $.ajax({
           url: "http://172.168.10.119:9000/muprojectservlet/checkPlayerData", // 서버 API 엔드포인트 URL, 변경 필요
           type: "GET",
           dataType: "json",
           success: function (data) {
             // 서버로부터 세션 데이터를 받아옴
             var allPlayersAvailable = data.allPlayersAvailable;

             if (allPlayersAvailable) {
               var result = confirm("정말로 저장하시겠습니까 ? ");
               if (result) {
                 $('#saveForm').submit();
               }
               
             } else {
               alert("Player 정보가 부족합니다. 모든 Player 정보를 입력하세요.");
               // 저장 취소
               event.preventDefault();
               //return;
             }
             // 여기에서 저장 로직을 실행할 수 있음
             // 예: document.getElementById("yourForm").submit();
           },
           error: function () {
             alert("서버와 통신 중 오류가 발생했습니다.");
           },
         });
       });
     });

     function getCurrentFormation() {
          $.ajax({
              type: "GET", // 또는 POST, 서버에서 설정한 메소드와 일치해야 합니다.
              url: "http://172.168.10.119:9000/muprojectservlet/getFormation", 
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
          getCurrentFormation(function () {
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

      function getCurrentFormation(callback) {
          $.ajax({
              type: "GET",
              url: "http://172.168.10.119:9000/muprojectservlet/getFormation",
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
        // 예시 위치, 필요에 따라 조절하세요.
            setFormation("currentFormation", "4-4-2");
        
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
       setFormation("currentFormation", "4-3-3");
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
        setFormation("currentFormation", "4-2-3-1");
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
    }
}
   
   function setFormation(attributeName, attributeValue) {
       $.ajax({
           type: "POST",
           url: "http://172.168.10.119:9000/muprojectservlet/setFormation",
           data: {
               attributeName: attributeName,
               attributeValue: attributeValue
           },
           success: function(response) {
               console.log(response.message);
               // 여기서 필요한 추가 작업을 수행하세요.
           },
           error: function() {
               console.error("Error setting session attribute");
           }
       });
   }
   

   //포메이션 설정 끝
   //포메이션 설정 끝
   //포메이션 설정 끝
   //포메이션 설정 끝

   // selectpicker를 활성화합니다.
   $('.selectpicker').selectpicker();

   

   
   
   // session에서 Playerone.playerImage 값을 가져옵니다.
   var player1Image = "${Playerone.playerImage}";
   var player2Image = "${Playertwo.playerImage}";
   var player3Image = "${Playerthree.playerImage}";
   var player4Image = "${Playerfour.playerImage}";
   var player5Image = "${Playerfive.playerImage}";
   var player6Image = "${Playersix.playerImage}";
   var player7Image = "${Playerseven.playerImage}";
   var player8Image = "${Playereight.playerImage}";
   var player9Image = "${Playernine.playerImage}";
   var player10Image = "${Playerten.playerImage}";
   var player11Image = "${Playereleven.playerImage}";

   var player1ImageElement = document.getElementById("player1Image");
   var player2ImageElement = document.getElementById("player2Image");
   var player3ImageElement = document.getElementById("player3Image");
   var player4ImageElement = document.getElementById("player4Image");
   var player5ImageElement = document.getElementById("player5Image");
   var player6ImageElement = document.getElementById("player6Image");
   var player7ImageElement = document.getElementById("player7Image");
   var player8ImageElement = document.getElementById("player8Image");
   var player9ImageElement = document.getElementById("player9Image");
   var player10ImageElement = document.getElementById("player10Image");
   var player11ImageElement = document.getElementById("player11Image");

   // 만약 Playerone.playerImage가 null이거나 빈 문자열이면 대체 이미지의 경로를 설정합니다.
   if (!player1Image) {
       player1ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player2Image) {
       player2ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player3Image) {
       player3ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player4Image) {
       player4ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player5Image) {
       player5ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player6Image) {
       player6ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player7Image) {
       player7ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player8Image) {
       player8ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player9Image) {
       player9ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player10Image) {
       player10ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   if (!player11Image) {
       player11ImageElement.src = "https://4.bp.blogspot.com/-5TIgZ19S-Hs/XNE_i21HVPI/AAAAAAABSyg/V2BH7MO3rGEnek-r0lY7779unhiBkvCswCLcBGAs/s800/sports_soccer_man_asia.png"; // 대체 이미지 경로를 여기에 입력하세요.
   }
   

      // 선수선택 팝업
// JavaScript 부분
function openPopup(position) {
    document.getElementById("myModal").style.display = "block";

    // hidden input의 값을 가져와서 사용
    var hiddenInput = document.getElementById("hiddenInput" + position);
    var hiddenInputValue = hiddenInput ? hiddenInput.value : null;

    // AJAX를 사용하여 popup_player.jsp를 로드하고 모달 팝업에 표시
    var overlay = document.getElementById("myModal");

    // 값이 비어있지 않을 때는 'popupPlayer.do'로, 비어있을 때는 'popupPlayer1.do'로 요청을 보냅니다.
    var requestUrl;
    if (hiddenInputValue === '' || hiddenInputValue === null) {
        requestUrl = 'popupPlayer1.do?position=' + position; // 값이 비어있거나 null인 경우
    } else {
        requestUrl = 'popupPlayer.do?position=' + position + '&playerId=' + hiddenInputValue; // 값이 비어있지 않은 경우
    }

    $.get(requestUrl, function(data) {
        $('#popupContent').html(data);
        overlay.style.display = "block";
    });
}


// 	$('#hoverImg').on('click', function(){
// 		console.log*$(this);
// 		let hiddenValue = $(this).children().last().attr('value');
		
// 	});
	

		
	
      function closePopup() {
         document.getElementById("myModal").style.display = "none";
      }
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
       function closePopup1() {
          document.getElementById("myModal").style.display = "none";
       }
       </script>

	</ body>
</html>