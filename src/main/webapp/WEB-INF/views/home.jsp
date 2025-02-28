<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Archivo Black', sans-serif;
   margin: 0;
   padding: 0;
   overflow: hidden;
    cursor: none;
    
}

.video-container {
   width: 100vw;
   height: 100vh;
}

#video {
   position: absolute;
   top: 50%;
   left: 50%;
   width: 120vw;
   height: 120vh;
   transform: translate(-50%, -50%);
}

#content {
   width: 100vw;
   height: 100vh;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   text-align: center;
   background-color: rgba(0, 0, 0, 0.5);
   z-index: 1;
   transition: all 300ms ease-in;
}

#title {
    text-shadow: 2px 2px 2px gray;
   margin-top : 300px;
   color: rgb(255, 255, 255);
   text-align: center;
   font-size: 130px;
   font-weight: bold;
   z-index: 10;
}

#title2 {
    transition: all 300ms ease-in;
   color: rgb(163, 163, 163);
   font-size: 20px;
   z-index: 10;
}

a {
   text-decoration: none;
}

#title:hover {
    cursor: none;
    text-shadow: none;
    z-index: 99;
   font-weight: bolder;
   color: #ff0000;
    font-size: 131px;
   background-image: url('https://ifh.cc/g/Md4Mkg.gif');
   background-size: cover;
    background-position:center center;
    -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
   background-clip: text;
}

#circle {
  /* background-image: url('https://ifh.cc/g/zopJ59.jpg'); */
  background-image: url('https://ifh.cc/g/xx5zwv.png');
  background-size: cover;
  z-index: 9999;
  position: absolute;
  width: 70px;
  height: 70px;
  /* background: #bb562b79; */
  border-radius: 50%;
  backface-visibility: hidden;
  pointer-events: none; /* This makes sure the circle doesn't interfere with other elements */
}

@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

body {
    

</style>
</head>
<body>
    <div id="circle"></div>
   <div class="video-container">
      <iframe id="video"
         src="https://www.youtube.com/embed/evCDobLbouU?autoplay=1&mute=1&controls=0&showinfo=0;si=9anSOda9EHYZFGYm&amp;start=17"
         title="YouTube video player" frameborder="0"
         allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
         allowfullscreen></iframe>
   </div>

   <div id="content" >
        <div id="titleDiv">
            <a href="login.do"><p id="title">Manchester<br>United.</p></a>
            <p id="title2">The Greatest Football Club in the world</p>
        </div>
   </div>
   <script>
    const title = document.getElementById('title');
    const title2 = document.getElementById('title2');
    const content = document.getElementById('content');
    const circle = document.getElementById('circle');

    title.addEventListener('mouseover', (event) => {
        content.style.backgroundColor = 'rgba(0, 0, 0, 0.91)';
        title2.style.opacity = 0;

    });

    title.addEventListener('mouseout', (event) => {
        content.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
        title2.style.opacity = 1;
    });

    // JavaScript for following cursor with circle
    document.addEventListener('mousemove', (e) => {
        const x = e.clientX;
        const y = e.clientY;

        circle.style.left = x -35+ 'px';
        circle.style.top = y - 35+ 'px';
    });
    </script>
</body>
</html>