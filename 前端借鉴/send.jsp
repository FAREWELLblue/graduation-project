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
		<div class="breadcrumbs"><a href="index.jsp">首页</a> &gt;  配送方式</div>
		<div class="wrapper help">
			<div class="pull-left w970 l230">
				<div class="box-border">
					<div class="article">
						<h3>
							<b>DELIVERY STATEMENT </b>
							配送说明
						</h3>
						<p>关于鲜花配送：<br>鲜花是通过我们设在各地的加盟店或者配送店完成。</p>
						<p>1、若以下情况造成订单延迟或无法配送，我们将不承担责任：<br>
　　# 按照送货时间，收货人没有出现在顾客指定的送货地址，而且没有其他人在该处代收货物；<br>
　　# 不可抗力，例如：自然灾害、交通戒严等；<br>
2、我们将尝试以三种方法联络有关客户：联络收货人、联络订货人、联络代收人，如仍无法联络上，我们将停止配送，直到与有关客户重新约定时间恢复服务；<br>
3、通常默认您允许货物可以代收，除非您在订购时的特殊要求一栏提出必须收货人亲自接受；<br>
4、出现以下情况，我们只负责一次配送，由此造成的重复配送费用和花材损耗费用，我们将不承担责任： <br>
　　# 收货人拒收；<br>
　　# 在未联系到收货人情况下，顾客仍要求继续配送；<br>
　　# 按照与收货人预约的时间地点配送到时，但收货人却没有出现；<br>
5、请您在收到鲜花时当场验收，如果发现质量问题，您有权拒收或要求换货，并请在签收单上注明拒收或换货的理由；</p>
                      
                      <p><font class="text-primary">选择配送范围请注意</font></p>
                        <p>为了避免由于向您追加路费，而耽误订单送达的情况。请您在选择配送区域时须参照提示筐中对应的送达地址的城区范围，如果您选择错误，我们会通知您超出范围需要加收的费用。如果您不能确定送达地址所属范围，请参照以下标准执行：<br>
                          A 市区：指传统意义上的市区、或城内10公里范围，免费配送 <br>
                          B郊区：指城内超出10公里外至20公里范围内、或城区边缘地带，加收运费30元<br>
                          C远郊及偏远地区：超出市区20公里以外的城市周边地区（或虽未超出20公里范围，但属交通不便地区），加收50元；偏远地区请先咨询中国鲜花礼品网客服是否能够送达，如可以配送的话路费根据具体距离另商议！<br>
                        </p>
                        <p><font class="text-primary">请注意：</font></p>
                        <p>1、诸如圣诞节、春节、情人节、七夕节、中秋节、母亲节等重要节日，我们不能满足按照客户指定时间段配送的特殊要求，只承诺在当天送达（节日定时服务除外）。<br>
                          2、由于绿植生长情况有所不同，造成实物与照片略有出入。需大量订购请提前3天发出订单。 </p>
<br>
					</div>
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