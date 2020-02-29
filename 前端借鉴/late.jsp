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
		
		 <div class="contact_bg">
                        <p><font class="text-primary ft_16">全国客服热线</font></p><p><font class="text-primary ft_16">400-889-8188</font></p>
                        <p>免长途费，人工客服时间：8:30-21:00<!--<b style="color:#ff6a00;">（2月15日-2月23日【除夕-正月初八】服务时间调整为：8:30-18:00）</b>--></p>
                        <p>总部客服：0755-88855678、0755-26668001</p>
                        <p>客服热线：+86-755-88855678</p>
                        <p>总部传真：0755-26660005</p>
                        <br><br>
                        <p><font class="text-primary ft_16">团购/集团采购鲜花专线</font>                        </p>
                        <p>联系人：鹿小姐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：0755-26668820&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ：2355363606<font color="red"> (广告投放请勿联系)</font></p>
                        <br><br>
                        <p><font class="text-primary ft_16">渠道合作</font>                        </p>
                        <p>
                            联系人：高小姐&nbsp;&nbsp;电话：0755-26661662&nbsp;&nbsp;&nbsp;QQ:3002425945<font color="red"> (广告投放请勿联系)</font><br>
                            Email:3002425945@qq.com
                        </p>
                        <br><br>
                        <p><font class="text-primary ft_16">客服部</font></p>
                        <p>
                            客服电话：400-889-8188&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服邮箱：kefu@flag.com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线客服<br>
                            短信：10690999520（仅供短信息交流使用）<br>
                            客服工作时间：8:30 至 21:00<!--<b style="color:#ff6a00;">（2月15日-2月23日【除夕-正月初八】服务时间调整为：8:30-18:00）</b>-->
                        </p>
                        <br><br>
                        <p><font class="text-primary ft_16">网址</font></p>
                        <p>域名：www.FlagCN.com (2005-2019相伴14载，卓越服务不变)</p>
                        <p>总部地址：河北省廊坊市广阳区新华路144号</p>
                    </div>
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