<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>教师身份登陆</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/teacher.css">
</head>
<body>
<header>
    <img src="./images/logo.png" alt="">
    <span id="title">评教评学系统</span>
    <a id="exit" href="login.jsp">退出</a>
    <span id="welcome">欢迎您 | </span>
</header>
<nav class="navbar-default" role="navigation">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li><a href="teacher_student_research.jsp" target="_blank">教师评学评价表</a></li>
            <li><a href="teacher_class_research.jsp" target="_blank">教学督导听课记录表</a></li>
            <li><a href="teacher_practice_research.jsp" target="_blank">教学督导听课（实践课）记录表</a></li>
        </ul>
    </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="carouselImg" src="./images/1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img class="carouselImg" src="./images/2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img class="carouselImg" src="./images/3.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" role="button" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" role="button" data-slide="next">&rsaquo;</a>
</div>
</body>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./js/teacher.js"></script>
