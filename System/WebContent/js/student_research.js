function check(form){
	
	if(document.forms.studentResearch.courseName.value==""){
		alert("请输入课程名称！");
		document.forms.studentResearch.courseName.focus();
		return false;
	}
	
	if(document.forms.studentResearch.className.value==""){
		alert("请输入班级！");
		document.forms.studentResearch.className.focus();
		return false;
	}
	
	if(document.forms.studentResearch.teacherName.value==""){
		alert("请输入授课教师！");
		document.forms.studentResearch.teacherName.focus();
		return false;
	}

	if(document.forms.studentResearch.instituteName.value==""){
		alert("请输入授课教师所在学院！");
		document.forms.studentResearch.instituteName.focus();
		return false;
	}

	if(document.forms.studentResearch.courseProperty.value==""){
		alert("请选择课程性质！");
		document.forms.studentResearch.courseProperty.focus();
		return false;
	}
		
	return true;
}
