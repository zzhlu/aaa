function check(form){
	
	if(document.forms.addTeacher.username.value==""){
		alert("请输入要添加教师的用户名！");
		document.forms.addTeacher.username.focus();
		return false;
	}
	
	if(document.forms.addTeacher.password.value==""){
		alert("请输入要添加教师的密码！");
		document.forms.addTeacher.password.focus();
		return false;
	}

	return true;
}
