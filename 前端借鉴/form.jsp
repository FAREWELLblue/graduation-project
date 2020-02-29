<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery/jquery-1.5.1.js"></script>
<script type="text/javascript">
//验证码
function _hyz() {
	var img = document.getElementById("VerifyCode");
	img.src = "/goods/VerifyCodeServlet?a"+new Date().getTime();
}
</script>
<script type="text/javascript">
$(function () {
   $("#xxx").blur(function() {
   var  value  = $("#xxx").val();
   $.ajax({
	   url:"Ajax",//要请求服务器url servlet的路径 
	   data: {val:value},//这是一个对象，它表示请求参数参数。
	                                    //服务器可以用request.GETP获取
	   async:true,//是否为异步请求
	   cache:false,//是否缓存结果
	   type:"POST",//请求方式
	   dataType: "json",//服务器返回的数据是什么类型。
	   success: function(result) {
			$("span").text(result.name+" "+result.age);
		
	}
   });
});
});
</script>
</head>
<body>

</body>
<form action="/tools/VerifyCodeServlet" method="post">
账号：<input type="text" name="uname" id="xxx"><span></span><br>
密码：<input type="password" name="pwd"><br>
验证码：<input type="text" name="verifycode"><br>
<img  src="/goods/VerifyCodeServlet" id="VerifyCode">
<a href="javascript:_hyz()">看不清点击刷新</a>

</form>
