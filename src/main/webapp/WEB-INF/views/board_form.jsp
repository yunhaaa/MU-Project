<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

#stadium {
	position: relative;
}

p {
	font-size: 20px; /* 글자 크기 */ /* 글꼴 */
	font-weight: bolder;
	color: rgb(26, 26, 26); /* 글자 색상 */
	font-family: 'LINESeedKR-Bd', sans-serif;
}

@font-face {
    font-family: 'LINESeedKR-Bd';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
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

#stadium {
	position: relative;
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

table {
	width: 100%;
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

/* 모달 팝업 스타일 */
</style>
<body class="background-image"
	style="background-image: url('https://ifh.cc/g/l7OzhL.jpg'); background-attachment: fixed; background-size: cover; background-repeat: no-repeat;">

	<%
	// HttpSession에서 formation 정보 가져오기
	String formation = (String) session.getAttribute("formation");
	%>
	<div>
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
						height="25" alt="Black and White Portrait of a Man" loading="lazy" />
					</a>
				</div>
				<!-- Right elements -->
			</div>
			<!-- Container wrapper -->
		</nav>
		<!-- Navbar -->
		<form method=post action="registerBoard.do" onsubmit="return form()">
			<div id="myModal" class="modal">
				<div class="modal-content" id="popupModalContent">
					<span class="close" onclick="closePopup()">&times;</span>
					<!-- 여기에 다른 JSP 페이지를 포함할 내용 추가 -->
					<div id="popupContent"></div>
				</div>
			</div>




			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<div style="opacity: 0.90; margin-top: 20px;">
				<div class="row">

					<div class="col-4" style="text-align: center;">

						<div id="stadium"
							style="position: relative; display: flex; flex-direction: row; flex-wrap: wrap;">
							<div id="hoverImg" class="player"
								style="left: 10%; top: 20%; z-index: 1;">
								<h3 class="place">LF</h3>
								<img alt="player1" id="player1Image"
									src="${player1.playerImage}" style="width: 50px; height: 50px;">
								<p>${player1.playerName}</p>
							</div>
							<div id="hoverImg" class="player"
								style="left: 30%; top: 20%; z-index: 1;">
								<h3 class="place">RF</h3>
								<img alt="player2" id="player2Image"
									src="${player2.playerImage}" style="width: 50px; height: 50px;">
								<p>${player2.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LM</h3>
								<img alt="player3" id="player3Image"
									src="${player3.playerImage}" style="width: 50px; height: 50px;">
								<p>${player3.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LCM</h3>
								<img alt="player4" id="player4Image"
									src="${player4.playerImage}" style="width: 50px; height: 50px;">
								<p>${player4.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RCM</h3>
								<img alt="player5" id="player5Image"
									src="${player5.playerImage}" style="width: 50px; height: 50px;">
								<p>${player5.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RM</h3>
								<img alt="player6" id="player6Image"
									src="${player6.playerImage}" style="width: 50px; height: 50px;">
								<p>${player6.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LWB</h3>
								<img alt="player7" id="player7Image"
									src="${player7.playerImage}" style="width: 50px; height: 50px;">
								<p>${player7.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">LCB</h3>
								<img alt="player8" id="player8Image"
									src="${player8.playerImage}" style="width: 50px; height: 50px;">
								<p>${player8.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RCB</h3>
								<img alt="player9" id="player9Image"
									src="${player9.playerImage}" style="width: 50px; height: 50px;">
								<p>${player9.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">RWB</h3>
								<img alt="player10" id="player10Image"
									src="${player10.playerImage}"
									style="width: 50px; height: 50px;">
								<p>${player10.playerName}</p>
							</div>
							<div id="hoverImg" class="player">
								<h3 class="place">GK</h3>
								<img alt="player11" id="player11Image"
									src="${player11.playerImage}"
									style="width: 50px; height: 50px;">
								<p>${player11.playerName}</p>
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
						<table border="1">

							<tr>
								<th>제목</th>

<!-- 								<div class="form-outline form-white"> -->
<!-- 									<input type="text" id="boardTitle" class="form-control"  placeholder="제목을 입력해주세요" /> <label -->
<!-- 										class="form-label" for="formWhite" name="boardTitle">제목을 입력해주세요</label> -->
<!-- 								</div> -->


								<td><input type="text" placeholder="제목을 입력해주세요"
									name="boardTitle" id="boardTitle" style="width: 800px;"></td>
							</tr>

							<tr>
								<th>내용</th>
								<td><input type="text" placeholder="내용을 입력해주세요"
									name="article" id="article" style="width: 800px;"></td>
							</tr>

						</table>


						<div style="text-align: center; margin-top: 20px;">
							<input type="hidden" name="usersId"
								value="<%=session.getAttribute("id")%>">
							<button type="submit" class="btn btn-primary" id="mubtn">작성</button>
							<a href="board.do" class="btn btn-primary" id="mubtn">취소</a>
						</div>



						<table border="1"
							style="width: 100%; margin-right: 20px; margin-top: 20px;">
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
							<!-- selectedPlayers가 비어있지 않을 때 실제 데이터로 tr 요소 생성 -->

							<tr>
								<td>${player1.playerId}</td>
								<td><img alt="" src="${player1.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player1.playerName}</td>
								<td>${player1.playerPosition}</td>
								<td>${player1.playerTeam}</td>
								<td>${player1.overall}</td>
								<td>${player1.leftfoot}</td>
								<td>${player1.rightfoot}</td>
								<td>${player1.mainfoot}</td>
								<td>${player1.sprinting}</td>
								<td>${player1.ballControl}</td>
								<td>${player1.physicality}</td>
								<td>${player1.stamina}</td>
								<td>${player1.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player1.playerId})">상세정보</button></td>
							</tr>
							<tr>
								<td>${player2.playerId}</td>
								<td><img alt="" src="${player2.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player2.playerName}</td>
								<td>${player2.playerPosition}</td>
								<td>${player2.playerTeam}</td>
								<td>${player2.overall}</td>
								<td>${player2.leftfoot}</td>
								<td>${player2.rightfoot}</td>
								<td>${player2.mainfoot}</td>
								<td>${player2.sprinting}</td>
								<td>${player2.ballControl}</td>
								<td>${player2.physicality}</td>
								<td>${player2.stamina}</td>
								<td>${player2.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player2.playerId})">상세정보</button></td>
							</tr>
							<!-- 이하 3부터 11까지도 동일한 방식으로 복사해서 적어줍니다 -->
							<tr>
								<td>${player3.playerId}</td>
								<td><img alt="" src="${player3.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player3.playerName}</td>
								<td>${player3.playerPosition}</td>
								<td>${player3.playerTeam}</td>
								<td>${player3.overall}</td>
								<td>${player3.leftfoot}</td>
								<td>${player3.rightfoot}</td>
								<td>${player3.mainfoot}</td>
								<td>${player3.sprinting}</td>
								<td>${player3.ballControl}</td>
								<td>${player3.physicality}</td>
								<td>${player3.stamina}</td>
								<td>${player3.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player3.playerId})">상세정보</button></td>
							</tr>
							<!-- ... 이전 내용은 동일 ... -->

							<tr>
								<td>${player4.playerId}</td>
								<td><img alt="" src="${player4.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player4.playerName}</td>
								<td>${player4.playerPosition}</td>
								<td>${player4.playerTeam}</td>
								<td>${player4.overall}</td>
								<td>${player4.leftfoot}</td>
								<td>${player4.rightfoot}</td>
								<td>${player4.mainfoot}</td>
								<td>${player4.sprinting}</td>
								<td>${player4.ballControl}</td>
								<td>${player4.physicality}</td>
								<td>${player4.stamina}</td>
								<td>${player4.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player4.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player5.playerId}</td>
								<td><img alt="" src="${player5.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player5.playerName}</td>
								<td>${player5.playerPosition}</td>
								<td>${player5.playerTeam}</td>
								<td>${player5.overall}</td>
								<td>${player5.leftfoot}</td>
								<td>${player5.rightfoot}</td>
								<td>${player5.mainfoot}</td>
								<td>${player5.sprinting}</td>
								<td>${player5.ballControl}</td>
								<td>${player5.physicality}</td>
								<td>${player5.stamina}</td>
								<td>${player5.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player5.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player6.playerId}</td>
								<td><img alt="" src="${player6.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player6.playerName}</td>
								<td>${player6.playerPosition}</td>
								<td>${player6.playerTeam}</td>
								<td>${player6.overall}</td>
								<td>${player6.leftfoot}</td>
								<td>${player6.rightfoot}</td>
								<td>${player6.mainfoot}</td>
								<td>${player6.sprinting}</td>
								<td>${player6.ballControl}</td>
								<td>${player6.physicality}</td>
								<td>${player6.stamina}</td>
								<td>${player6.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player6.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player7.playerId}</td>
								<td><img alt="" src="${player7.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player7.playerName}</td>
								<td>${player7.playerPosition}</td>
								<td>${player7.playerTeam}</td>
								<td>${player7.overall}</td>
								<td>${player7.leftfoot}</td>
								<td>${player7.rightfoot}</td>
								<td>${player7.mainfoot}</td>
								<td>${player7.sprinting}</td>
								<td>${player7.ballControl}</td>
								<td>${player7.physicality}</td>
								<td>${player7.stamina}</td>
								<td>${player7.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player7.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player8.playerId}</td>
								<td><img alt="" src="${player8.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player8.playerName}</td>
								<td>${player8.playerPosition}</td>
								<td>${player8.playerTeam}</td>
								<td>${player8.overall}</td>
								<td>${player8.leftfoot}</td>
								<td>${player8.rightfoot}</td>
								<td>${player8.mainfoot}</td>
								<td>${player8.sprinting}</td>
								<td>${player8.ballControl}</td>
								<td>${player8.physicality}</td>
								<td>${player8.stamina}</td>
								<td>${player8.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player8.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player9.playerId}</td>
								<td><img alt="" src="${player9.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player9.playerName}</td>
								<td>${player9.playerPosition}</td>
								<td>${player9.playerTeam}</td>
								<td>${player9.overall}</td>
								<td>${player9.leftfoot}</td>
								<td>${player9.rightfoot}</td>
								<td>${player9.mainfoot}</td>
								<td>${player9.sprinting}</td>
								<td>${player9.ballControl}</td>
								<td>${player9.physicality}</td>
								<td>${player9.stamina}</td>
								<td>${player9.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player9.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player10.playerId}</td>
								<td><img alt="" src="${player10.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player10.playerName}</td>
								<td>${player10.playerPosition}</td>
								<td>${player10.playerTeam}</td>
								<td>${player10.overall}</td>
								<td>${player10.leftfoot}</td>
								<td>${player10.rightfoot}</td>
								<td>${player10.mainfoot}</td>
								<td>${player10.sprinting}</td>
								<td>${player10.ballControl}</td>
								<td>${player10.physicality}</td>
								<td>${player10.stamina}</td>
								<td>${player10.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player10.playerId})">상세정보</button></td>
							</tr>

							<tr>
								<td>${player11.playerId}</td>
								<td><img alt="" src="${player11.playerImage}"
									style="width: 50px; height: 50px;"></td>
								<td>${player11.playerName}</td>
								<td>${player11.playerPosition}</td>
								<td>${player11.playerTeam}</td>
								<td>${player11.overall}</td>
								<td>${player11.leftfoot}</td>
								<td>${player11.rightfoot}</td>
								<td>${player11.mainfoot}</td>
								<td>${player11.sprinting}</td>
								<td>${player11.ballControl}</td>
								<td>${player11.physicality}</td>
								<td>${player11.stamina}</td>
								<td>${player11.passing}</td>
								<td><button type="button" id="popupButton"
										class="btn btn-primary"
										onclick="openPopup1(${player11.playerId})">상세정보</button></td>
							</tr>



						</table>
						<div
							style="text-align: center; margin-top: 20px; margin-bottom: 20px;"
							id="buttonBox">
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
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->
			<!-- ------------------------------------------ -->



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

</body>
<script>
   function form() {
   var boardTitle = document.getElementById("boardTitle").value;
   var article = document.getElementById("article").value;
   
      if(!boardTitle) {
         alert("제목을 입력해주세요!");
         event.preventDefault();
      }else if(article == "") {
         alert("내용을 입력해주세요!");
         event.preventDefault();
      }
   return true;
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
  function closePopup() {
     document.getElementById("myModal").style.display = "none";
  }
  
  

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
          url: "http://172.168.10.119:9000/muprojectservlet/getFormationForm",
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
</html>