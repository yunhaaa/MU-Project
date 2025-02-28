<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/login.css" type="text/css"
   media="screen" />

</head>
<body>

<div class = "video-container">
   <iframe id="video" src="https://www.youtube.com/embed/YPdjiIuT4Qg?autoplay=1&mute=1&controls=0&showinfo=0;si=PIZF8IlydZ7ro9Vo&amp;start=106" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
    <div class="login-form">
      <div class="sign-in-htm">
       <form action="loginAction.do">
        <div class="group">
          <label for="user" class="label">Username</label>
          <input id="user" type="text" class="input" name="id">
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="pass" type="password" class="input" data-type="password" name="pw">
        </div>
        
        <c:if test="${not empty loginFailed}">
            <div class="group">
                <p class="error-message" style="color: rgb(230, 30, 30);">아이디 또는 비밀번호를 확인해주세요.</p>
				
            </div>
        </c:if>
        <p style="color: rgb(230, 30, 30);"><%= (String) session.getAttribute("alertLogin") %></p>
        
        
        <div class="group">
          <input id="check" type="checkbox" class="check" checked>
          <label for="check"><span class="icon"></span> Keep me Signed in</label>
        </div>
        <div class="group">
          <input type="submit" class="button" value="Sign In">
        </div>
        </form>
        
        <div class="hr"></div>
        <div class="foot-lnk">
          <p="#forgot">Forgot Password?</p>
        </div>
      </div>
      <div class="sign-up-htm">
      <form action="registeraction.do">
        <div class="group">
          <label for="user" class="label">ID</label>
          <input id="user" type="text" class="input" name="id">
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="pass" type="password" class="input" data-type="password" name="pw">
        </div>
        <div class="group">
          <label for="pass" class="label">NickName</label>
          <input id="pass" type="text" class="input" name="nickname">
        </div>
        <div class="group">
          <label for="pass" class="label">Email Address</label>
          <input id="pass" type="text" class="input" name="email">
        </div>
        <div class="group">
          <input type="submit" class="button" value="Sign Up">
        </div>
        </form>
        <div class="hr"></div>
        <div class="foot-lnk">
          <p="tab-1">Already Member?</p>
        </div>
      </div>
    </div>
  </div>
</div>

   <!-- MD 부트스트랩 START -->
   <script src="mdb/js/mdb.min.js"></script>
   <!-- MD 부트스트랩 END -->
   <script>
   
    window.addEventListener('load', function () {
       setFormation("currentFormation", "4-2-3-1");
   });
   
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
   
   </script>
</body>
</html>