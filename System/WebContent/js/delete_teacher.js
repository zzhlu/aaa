function check(form){
	
	if(document.forms.deleteTeacher.username.value==""){
		alert("请输入要删除教师的用户名！");
		document.forms.deleteTeacher.username.focus();
		return false;
	}

	return true;
}
