<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>西安邮电大学评教评学系统登录界面</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/login.css">
	<script src="./js/login.js"></script>	
</head>
<body>
<header>
    <ul class="list-inline">
        <li><a href="#">官方贴吧</a></li>
        <li><a href="#">官方微博</a></li>
        <li><a href="#">问题反馈</a></li>
    </ul>
    <h1>
        <img src="./images/logo.png" alt="">
    </h1>
    <h2>
                    评教评学系统
    </h2>
</header>
<div class="container">
    <div class="row col-md-4 col-md-offset-7">
        <h3>用户登录 / LOGIN</h3>
        <hr>
        <form class="form-horizontal" name="login" action="LoginConfirm" method="post" role="form">
            <div class="form-group">
                <label for="username" class="control-label"></label>
                <div class="col-md-offset-2 col-md-8">
                    <input type="text" class="form-control" name="username" id="username" placeholder="用户名">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="control-label"></label>
                <div class="col-md-offset-2 col-md-8">
                    <input type="password" class="form-control" name="password" id="password" placeholder="密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-8">
                    <label class="checkbox-inline">
                        <input type="radio" name="identity" value="admin">管理员
                    </label>
                    <label class="checkbox-inline">
                        <input type="radio" name="identity" value="teacher">教师
                    </label>
                    <label class="checkbox-inline">
                        <input type="radio" name="identity" value="student" checked>学生
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-8"> 
                    <input type="reset" id="reset" name="reset" value="重置" class="btn btn-primary">
                    <input type="submit" id="submit" name="submit" onclick="return check(this);" value="登录" class="btn btn-primary">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>