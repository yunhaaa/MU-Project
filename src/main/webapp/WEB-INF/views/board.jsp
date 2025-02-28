<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</head>
<body
	style="background-image: url('https://ifh.cc/g/l7OzhL.jpg'); background-attachment: fixed; background-size: cover; background-repeat: no-repeat;">
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

		<table border="1" style="opacity: 0.975; margin-top:20px;">
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>비고</th>


			</tr>
			<c:forEach var="bl" items="${boardList}">
				<tr onclick="location.href='boardArticle.do?boardId=${bl.boardId}'">
					<td>${bl.boardTitle}</td>
					<td>${bl.usersId}</td>
					<td><c:if test="${bl.usersId eq sessionScope.id}">
							<a href="boardEdit.do?boardId=${bl.boardId}"
								class="btn btn-primary"
								style="background-color: rgb(199, 1, 1); color: white; text-decoration: none; border-color: #007bff; padding: 6px 12px; border-radius: 4px;">
								수정 </a>
							<a href="delete.do?boardId=${bl.boardId}" class="btn btn-primary"
								style="background-color: rgb(199, 1, 1); color: white; text-decoration: none; border-color: #007bff; padding: 6px 12px; border-radius: 4px;">
								삭제 </a>
						</c:if></td>

				</tr>
			</c:forEach>

		</table>
		<div style="text-align: center; margin-top:20px;" >
			<a href="main.do" class="btn btn-primary" id="mubtn">홈으로</a> <a
				href="boardForm.do" class="btn btn-primary" id="mubtn">글쓰기</a>
		</div>
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->
		<!-- 푸터 시작이유~~~~~~~~~~~~~~~~~~ -->

		<footer class=" text-center text-white" id="footergray" style="margin-top:20px;">
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
</html>