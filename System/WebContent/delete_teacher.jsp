<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除教师页面</title>
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./css/add_teacher.css">
<script src="./js/delete_teacher.js"></script>
</head>
<body>
<div class="container">
    <div class="row col-md-8 col-md-offset-2">
        <form class="form-horizontal" name="deleteTeacher" action="DeleteTeacher" method="post">
            <div class="form-group">
                <div class="col-md-offset-2 col-md-8">
                    <label class="control-label">请输入要删除教师的用户名：</label>
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="control-label"></label>
                <div class="col-md-offset-2 col-md-8">
                    <input type="text" class="form-control" name="username" id="username">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-8"> 
                    <input type="submit" name="delete" onclick="return check(this);" value="删除" class="btn btn-primary btn-lg btn-block">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>