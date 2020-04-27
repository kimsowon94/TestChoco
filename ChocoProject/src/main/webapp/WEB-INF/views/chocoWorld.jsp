<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MainHome css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/MainHome.css">

<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>


</head>
<body>
<jsp:include page="home.jsp"/>  
<h2 style="text-align:center">Gallery</h2>

<div class="container" style="text-align: center;">
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src="../resources/img/1.png" style="width:30%" >
  </div>

  <div class="mySlides">
    <div class="numbertext" >2 / 6</div>
    <img src="../resources/img/7.jpg" style="width:30%">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src="../resources/img/8.jpg" style="width:30%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src="../resources/img/9.jpg" style="width:30%">
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src="../resources/img/5.jpg" style="width:30%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src="../resources/img/6.jpg" style="width:30%">
  </div>
    
<!--   <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a> -->

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row" style="height: 175px;">
    <div class="column">
      <img class="demo cursor" src="../resources/img/1.png" onclick="currentSlide(1)" alt="The Woods">
    </div>
    <div class="column">
      <img class="demo cursor" src="../resources/img/7.jpg" onclick="currentSlide(2)" alt="Cinque Terre">
    </div>
    <div class="column">
      <img class="demo cursor" src="../resources/img/8.jpg" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="../resources/img/9.jpg" onclick="currentSlide(4)" alt="Northern Lights">
    </div>
    <div class="column">
      <img class="demo cursor" src="../resources/img/5.jpg" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>    
    <div class="column">
      <img class="demo cursor" src="../resources/img/6.jpg" onclick="currentSlide(6)" alt="Snowy Mountains">
    </div>
  </div>
</div>
</body>
</html>