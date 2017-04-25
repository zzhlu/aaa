function check(form){
	
	if(document.forms.login.username.value==""){
		alert("请输入用户名");
		document.forms.login.username.focus();
		return false;
	}
	
	if(document.forms.login.password.value==""){
		alert("请输入密码");
		document.forms.login.password.focus();
		return false;
	}
	
	return true;
}