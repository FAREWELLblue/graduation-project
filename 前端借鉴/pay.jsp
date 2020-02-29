<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<style type="text/css">
			.carousel-inner>.item>img{
				display: block;
				width: 100%;
				height: 100%;
			}
		</style>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
	    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
	    <script src="js/bootstrap.min.js" type="text/javascript"></script>
	</head>
	<body>
			<!--
            	作者：offline
            	时间：2019-06-24
            	描述：菜单栏
            -->
            <div class="container-fluid">
            	<div class="col-md-4">
            		<img src="img/w5.jpg" width="250px" height="100px"/>	
            	</div>
            	<div class="col-md-5">
            		<img src="" width="70%"/>
            	</div>
            		<div class="col-md-3 col-md-pull-1" >
				<ol class="list-inline" style="margin-top: 50px;margin-left: 220px">
				<c:choose>
				<c:when test="${empty user}">
					<li><a href="login.jsp" style="font-size: 22px;"><img alt="" src="img/22222.jpg" width="40px" height="40px" />登录</a></li>
					<li><a href="register.jsp" style="font-size: 22px;"><img alt="" src="img/33333.jpg" width="40px" height="40px" />注册</a></li>
				</c:when>
				<c:otherwise>				
					<li style="font-size: 22px;">欢迎用户：${user.uname }</li>
					<li><a href="FindCServlet" style="font-size: 22px;"><img alt="" src="img/cart1.gif" width="40px" height="40px" style="position: relative;"/>购物车</a></li>
					<li><a href="logout.jsp" style="font-size: 22px;"><img alt="" src="img/ku.jpg" width="40px" height="40px" />注销</a></li>
				</c:otherwise>
				</c:choose>
				</ol>
			</div>
		</div>
		<!--
        	作者：offline
        	时间：2019-06-24
        	描述导航条
        -->
        <nav class="navbar navbar-default" style="margin-bottom:0px";>
			<div class="navbar-header">
				<a href="#" class="navbar-brand">导航</a>
				<a class="navbar-brand" href="index.jsp">首页</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        				<ul class="nav navbar-nav">
        					<li class=""><a href="pageservlet?cid=1&pc=1">爱情鲜花<span class="sr-only">(current)</span></a></li>
        				 <li><a href="pageservlet?cid=2">永生花</a></li>
        				 <li><a href="pageservlet?cid=3">父母鲜花</a></li>
        				 <li><a href="pageservlet?cid=4">毕业鲜花礼物</a></li>
        				</ul>
        				<form class="navbar-form navbar-right" role="search" action="FindlikeServlet">
        					<div class="form-group">
        						<input type="text" class="form-control" name="key" placeholder="搜索"/>
        							<input type="submit" class="btn btn-danger" value="搜索 "/>
        					</div>
        					
        					</form>
        			</div>
		</nav>
		
		<div class="container">
    <div class="breadcrumbs"><a href="index.jsp">首页</a> &gt; 支付方式</div>
    <div class="wrapper help" style="border:1px solid #e0e0e0;">
        <div style="line-height:60px; font-size:24px;font-family: tahoma, arial, 'Hiragino Sans GB', '\5FAE\8F6F\96C5\9ED1', sans-serif; text-align:center; margin-top:20px;">支付方式</div>
        <table style="border-collapse:collapse;" border="1" bordercolor="D9D9D9" cellpadding="0" cellspacing="0" width="76%" align="center">
            <tbody>
                
                
                <tr>
                    <td height="90" width="23%"><strong>支付宝帐户</strong></td>
                    <td width="51%" align="center"><img src="img/zfbzf_02.jpg" alt="支付宝支付"></td>
                    <td valign="middle" width="26%" align="center">支付宝支付 &gt;&gt;</td>
                </tr>
                <tr>
                    <td height="90"><strong>微信支付</strong></td>
                    <td align="center"><img src="img/wxzf_02.jpg" alt="微信支付"></td>
                    <td valign="middle" width="26%" align="center">微信支付 &gt;&gt;</td>
                </tr>
               
            </tbody>
        </table>
    </div>
</div>
<br><br>
  <div class="container-fluid">

	       			<img src="img/footer.jpg" width="100%" class="col-xs-12"/>

</div>
		<div class="container-fluid">
			<div style="text-align: center;margin-top: 5px;">
				<ul class="list-inline">
					<li><a href="info.jsp">关于我们</a></li>
					<li><a href="late.jsp">联系我们</a></li>
					<li><a href="pathin.jsp">招贤纳士</a></li>
					<li><a href="law.jsp">法律声明</a></li>
					<li><a href="friend.jsp">友情链接</a></li>
					<li><a href="pay.jsp">支付方式</a></li>
					<li><a href="send.jsp">配送方式</a></li>
					<li><a href="service.jsp">服务声明</a></li>
					<li><a href="ait.jsp">广告声明</a></li>
				</ul>
			</div>
			<div style="text-align:center ;margin-top: 5px;margin-bottom: 50px;">
			    陌上花开 &copy; 2019-永久 版权归“FLAG”所有！！！
			</div>
			</div>
   
    
</body>
</html>