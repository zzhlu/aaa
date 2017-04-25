function check(form){
	
	if(document.forms.teaPracResearch.courseName.value==""){
		alert("请输入课程名称！");
		document.forms.teaPracResearch.courseName.focus();
		return false;
	}
	
	if(document.forms.teaPracResearch.className.value==""){
		alert("请输入班级！");
		document.forms.teaPracResearch.className.focus();
		return false;
	}
	
	if(document.forms.teaPracResearch.guideTeacher.value==""){
		alert("请输入指导教师！");
		document.forms.teaPracResearch.guideTeacher.focus();
		return false;
	}

	if(document.forms.teaPracResearch.guideTeacherDuty.value==""){
		alert("请输入指导教师职称！");
		document.forms.teaPracResearch.guideTeacherDuty.focus();
		return false;
	}
	if(document.forms.teaPracResearch.guideTeacherInstitute.value==""){
		alert("请输入指导教师所在学院！");
		document.forms.teaPracResearch.guideTeacherInstitute.focus();
		return false;
	}
	
	if(document.forms.teaPracResearch.labTeacher.value==""){
		alert("请输入实验室教师！");
		document.forms.teaPracResearch.labTeacher.focus();
		return false;
	}
	
	if(document.forms.teaPracResearch.labTeacherDuty.value==""){
		alert("请输入实验室教师职称！");
		document.forms.teaPracResearch.labTeacherDuty.focus();
		return false;
	}

	if(document.forms.teaPracResearch.labTeacherInstitute.value==""){
		alert("请输入实验室教师所在学院！");
		document.forms.teaPracResearch.labTeacherInstitute.focus();
		return false;
	}
	
	if(document.forms.teaPracResearch.practiceType.value==""){
		alert("请选择实践类型！");
		document.forms.teaPracResearch.practiceType.focus();
		return false;
	}
	
	if((document.forms.teaPracResearch.total.value=="") ||
			(document.forms.teaPracResearch.actual.value=="") ||
			(document.forms.teaPracResearch.late.value=="")){
		alert("请补全学生到课情况！");
		
		if(document.forms.teaPracResearch.actual.value==""){
			document.forms.teaPracResearch.actual.focus();
		}
		
		if(document.forms.teaPracResearch.late.value==""){
			document.forms.teaPracResearch.late.focus();
		}
		
		if(document.forms.teaPracResearch.total.value==""){
			document.forms.teaPracResearch.total.focus();
		}
		
		return false;
	}
		
	return true;
}
