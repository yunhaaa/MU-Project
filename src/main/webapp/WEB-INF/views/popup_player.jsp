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
<link rel="stylesheet" href="css/muproject.css" type="text/css"
	media="screen" />
<!-- MD 부트스트랩 END -->
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
<body>
	<div style="text-align: center;">
		<h3 style="font-size: 36px; font-weight: bold;">선수 포메이션 지정</h3>
	</div>

	<form method="get" action="position.do"
		onsubmit="return selectPlayer();">

		<table border="1">
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
				<th>선택</th>
			</tr>
			<c:forEach var="spp" items="${selectedPopupPlayers}"
				varStatus="status">
				<tr onclick="selectRadio(this)">
					<td>${spp.playerId}</td>
					<td><img alt="" src="${spp.playerImage}"
						style="width: 50px; height: 50px;"></td>
					<td>${spp.playerName}</td>
					<td>${spp.playerPosition}</td>
					<td>${spp.playerTeam}</td>
					<td>${spp.overall}</td>
					<td>${spp.leftfoot}</td>
					<td>${spp.rightfoot}</td>
					<td>${spp.mainfoot}</td>
					<td>${spp.sprinting}</td>
					<td>${spp.ballControl}</td>
					<td>${spp.physicality}</td>
					<td>${spp.stamina}</td>
					<td>${spp.passing}</td>
					<td><input type="radio" name="playerId"
						value="${spp.playerId}" id="player${status.index}" checked /> <label
						for="player${status.index}">선택</label></td>
				</tr>
			</c:forEach>
		</table>
		<div id="btns" style="text-align: center;">
			<input type="submit" value="지정" class="btn btn-primary"
				id="assignButton"
				style="margin-bottom: 20px; margin-top: 20px; background-color: rgb(199, 1, 1); color: white;">
			<a href="mainDelete.do" class="btn" id="mubtn" style="margin-bottom: 20px;">영입
				취소</a>
		</div>
	</form>

	<!-- MD 부트스트랩 START -->
	<script src="mdb/js/mdb.min.js"></script>
	<!-- MD 부트스트랩 END -->

	<script>
		//       function selectPlayer() {
		//          if (${empty selectedPlayerPopup}) {
		//             alert("선수가 없습니다! 선수영입 후 이용바랍니다!");
		//          }
		//       }

		function selectPlayer() {
			var selectedRadio = document
					.querySelector('input[name="playerId"]:checked');
			if (!selectedRadio) {
				alert("지정할 선수가 없습니다! 선수 영입 후 이용해주세요!");
				return false;
			} else {
				return true;
			}

		}
		// HTML 로드가 완료되면 실행됩니다.
		document.addEventListener("DOMContentLoaded", function() {
			// "지정" 버튼과 라디오 버튼 요소 가져오기
			var assignButton = document.getElementById("assignButton");
			var radioButtons = document
					.querySelectorAll('input[name="playerId"]');

			// "지정" 버튼의 클릭 이벤트 핸들러 등록
			assignButton.addEventListener("click", function(event) {
				// 라디오 버튼 중 하나가 선택되었는지 확인
				var isAnyRadioButtonSelected = false;
				for (var i = 0; i < radioButtons.length; i++) {
					if (radioButtons[i].checked) {
						isAnyRadioButtonSelected = true;
						break; // 하나라도 선택된 경우 루프 종료
					}
				}

				// 라디오 버튼이 선택되지 않았을 때 "지정" 버튼 동작 방지
				if (!isAnyRadioButtonSelected) {
					event.preventDefault(); // 이벤트 기본 동작(폼 제출) 방지
					alert("선수를 선택하세요.");
				}
			});
		});

		function selectRadio(row) {
			var radio = row.querySelector('input[type="radio"]');
			radio.checked = true;
		}
		
		   $(document).ready(function() {
		          // 행 클릭 시 라디오 버튼 선택
		          $("tr").click(function() {
		              var radioButton = $(this).find("input[type='radio']");
		              radioButton.prop("checked", true);
		          });
		      });
		      
		   
	</script>







</body>
</html>