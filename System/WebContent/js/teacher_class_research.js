function check(form){
	
	if(document.forms.teaClassResearch.courseName.value==""){
		alert("请输入课程名称！");
		document.forms.teaClassResearch.courseName.focus();
		return false;
	}
	
	if(document.forms.teaClassResearch.majorClass.value==""){
		alert("请输入专业班级！");
		document.forms.teaClassResearch.majorClass.focus();
		return false;
	}
	
	if(document.forms.teaClassResearch.teacherName.value==""){
		alert("请输入授课教师！");
		document.forms.teaClassResearch.teacherName.focus();
		return false;
	}

	if(document.forms.teaClassResearch.instituteName.value==""){
		alert("请输入授课教师所属院、部！");
		document.forms.teaClassResearch.instituteName.focus();
		return false;
	}
	
	if(document.forms.teaClassResearch.duty.value==""){
		alert("请输入授课教师职称！");
		document.forms.teaClassResearch.duty.focus();
		return false;
	}

	if(document.forms.teaClassResearch.courseProperty.value==""){
		alert("请选择课程性质！");
		document.forms.teaClassResearch.courseProperty.focus();
		return false;
	}
		
	if((document.forms.teaClassResearch.total.value=="") ||
			(document.forms.teaClassResearch.actual.value=="") ||
			(document.forms.teaClassResearch.late.value=="") ||
			(document.forms.teaClassResearch.leaveEarly.value=="") ||
			(document.forms.teaClassResearch.turnover.value=="")){
		alert("请将学生到课情况补充完整！");
		
		if(document.forms.teaClassResearch.turnover.value==""){
			document.forms.teaClassResearch.turnover.focus();
		}
		
		if(document.forms.teaClassResearch.leaveEarly.value==""){
			document.forms.teaClassResearch.leaveEarly.focus();
		}
		
		if(document.forms.teaClassResearch.late.value==""){
			document.forms.teaClassResearch.late.focus();
		}
		
		if(document.forms.teaClassResearch.actual.value==""){
			document.forms.teaClassResearch.actual.focus();
		}	
		
		if(document.forms.teaClassResearch.total.value==""){
			document.forms.teaClassResearch.total.focus();
		}
		
		return false;
	}
		
	return true;
}
