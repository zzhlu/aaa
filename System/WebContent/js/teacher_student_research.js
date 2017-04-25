function check(form){
	
	if(document.forms.teaStuResearch.courseName.value==""){
		alert("请输入课程名称！");
		document.forms.teaStuResearch.courseName.focus();
		return false;
	}
	
	if(document.forms.teaStuResearch.className.value==""){
		alert("请输入班级！");
		document.forms.teaStuResearch.className.focus();
		return false;
	}
	
	if(document.forms.teaStuResearch.teacherName.value==""){
		alert("请输入教师名！");
		document.forms.teaStuResearch.teacherName.focus();
		return false;
	}

	if(document.forms.teaStuResearch.term.value==""){
		alert("请输入开课学期！");
		document.forms.teaStuResearch.term.focus();
		return false;
	}
		
	return true;
}
