<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>管理员页面左边部分</title>
<link rel="stylesheet" href="./css/left.css">
</head>
<body>  
    <h3>教师管理</h3>
    <ul>   
        <li><a href="add_teacher.jsp" target="right">添加教师</a></li>  
        <li><a href="delete_teacher.jsp" target="right">删除教师</a></li> 
    </ul>   
    <h3>各类调查表统计分析结果</h3>  
    <ul>  
        <li><a href="student_result.jsp" target="right">学生学情问卷、评教调查表</a></li>  
        <li><a href="teacher_student_result.jsp" target="right">教师评学评价表</a></li>  
        <li><a href="teacher_class_result.jsp" target="right">教学督导听课记录表</a></li>  
        <li><a href="teacher_practice_result.jsp" target="right">教学督导听课（实践课）记录表</a></li>  
    </ul>  
</body>
</html>