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
		
       <!-- <div class="container-fluid">
        	<nav class="navbar navbar-inverse">
        		<div class="container-fluid">
        			<div class="navbar-header">
        				<button type="button" class="navbar-togle collapse" data-toggle="collaose" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        					<span class="sr-only">Toggle navigation</span>
        					<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
        				</button>
        				<a class="navbar-brand" href="index.jsp">首页</a>
        			</div>
        			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        				<ul class="nav navbar-nav">
        					<li class="active"><a href="pageservlet?cid=1&pc=1">爱情鲜花<span class="sr-only">(current)</span></a></li>
        				 <li><a href="pageservlet?cid=2">永生花</a></li>
        				 <li><a href="pageservlet?cid=3">父母鲜花</a></li>
        				 <li><a href="pageservlet?cid=4">毕业鲜花礼物</a></li>
        				</ul>
        				<form class="navbar-form navbar-right" role="search">
        					<div class="form-group">
        						<input type="text" class="form-control" placeholder="Search"/>
        					</div>
        					<button type="submit" class="btn btn-default">搜索</button>
        					</form>
        			</div>
        		</div>
        	</nav>
        </div>
-->
		<!--
        	作者：offline
        	时间：2019-06-24
        	描述：轮播部分
        -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/images1.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/images7.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/imsges10.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
					<!--
        	作者：offline
        	时间：2019-06-24
        	描述：商品显示1
        -->
		<div class="container-fluid">
			<div class="col-md-12">
				<h2>热门商品&nbsp;&nbsp;<img src=""/></h2>
			</div>
			<div class="col-md-2" style="border: 1px solid #E7E7E7;border-right:0;padding: 0;">
				<img src="img/1i.jpg" width="300px" height="600px" style="display: inline-block;"/>
			</div>
			<div class="col-md-10 col-md-pull-1" style="position: absolute;">
				<div class="col-md-6" style="text-align: center;height: 200px;padding: 0px;">
					<a href="PruductServlet?pid=130">
						<img src="img/1a.jpg" width="300px" height="300px" style="display: inline-block;position: relative;top:50px" />
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 60px;left: -30px;font-size: 18px;'>爱情*甜美公主</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 60px;left: -30px;">&yen;369.00</font></p>
				</div>
				<div class="col-md-2 col-md-pull-1" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=131">
						<img src="img/1b.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 40px;left: -30px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 50px;left: -30px;font-size: 18px;'>爱情*不变的承诺</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 50px;left: -30px;">&yen;538.00</font></p>
				</div>
				<div class="col-md-2 col-md-offset-1" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 40px;right: 200px;">
					<a href="PruductServlet?pid=132">
						<img src="img/1c.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>爱情*牵手一生</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;198.00</font></p>
				</div>
				<div class="col-md-2 yes-right-border" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top:-160px;right: -1300px;">
					<a href="PruductServlet?pid=133">
						<img src="img/1d.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>爱情*缪斯女神</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;189.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=134">
						<img src="img/1e.jpg" width="300" height="300" style="display: inline-block;position: relative;top:250px;left: -20px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: -30px;font-size: 18px;'>爱情*我只钟情于你</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: -30px;">&yen;239.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=135">
						<img src="img/1g.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left: 100px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 100px;font-size: 18px;'>爱情*月光女神</a></p>
					<p><font color="antiquewhite"  style="font-size: 20px;position: relative;top: 260px;left: 100px;">&yen;232.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=136">
						<img src="img/1h.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left:190px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 200px;font-size: 18px;'>爱情*忘情巴黎</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: 200px;">&yen;299.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 250px;left: 260px;">
					<a href="PruductServlet?pid=137">
						<img src="img/1f.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: 0px;font-size: 18px;'>爱情*淡雅脱俗</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: 10px;">&yen;379.00</font></p>
				</div>
			</div>
		</div>
		<!--
        	作者：offline
        	时间：2019-06-24
        	描述：广告
       -->
		<div class="container-fluid">
			<img src="img/123.jpg" width="300" height="200px">
		</div>
			<!--
        	作者：offline
        	时间：2019-06-24
        	描述：商品显示2
        -->
		<div class="container-fluid">
			<div class="col-md-12">
				<h2>热门商品&nbsp;&nbsp;<img src="img/title2.jpg"/></h2>
			</div>
			<div class="col-md-2" style="border: 1px solid #E7E7E7;border-right:0;padding: 0;">
				<img src="img/2i.jpg" width="300px" height="600px" style="display: inline-block;"/>
			</div>
			<div class="col-md-10 col-md-pull-1" style="position: absolute;">
				<div class="col-md-6" style="text-align: center;height: 200px;padding: 0px;">
					<a href="PruductServlet?pid=138">
						<img src="img/2b.jpg" width="300px" height="300px" style="display: inline-block;position: relative;top:50px" />
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 60px;left: -30px;font-size: 18px;'>永生花*恋花</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 60px;left: -30px;">&yen;298.00</font></p>
				</div>
				<div class="col-md-2 col-md-pull-1" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=139">
						<img src="img/2c.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 40px;left: -30px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 50px;left: -30px;font-size: 18px;'>永生花*彩虹下的约定</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 50px;left: -30px;">&yen;288.00</font></p>
				</div>
				<div class="col-md-2 col-md-offset-1" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 40px;right: 200px;">
					<a href="PruductServlet?pid=140">
						<img src="img/2d.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>永生花*想念的季节</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;368.00</font></p>
				</div>
				<div class="col-md-2 yes-right-border" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top:-160px;right: -1300px;">
					<a href="PruductServlet?pid=141">
						<img src="img/2e.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>永生花*一生一世</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;189.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=142">
						<img src="img/2f.jpg" width="300" height="300" style="display: inline-block;position: relative;top:250px;left: -20px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: -30px;font-size: 18px;'>永生花*To温暖你心</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: -30px;">&yen;198.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=143">
						<img src="img/2g.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left: 100px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 100px;font-size: 18px;'>永生花*带灯</a></p>
					<p><font color="antiquewhite"  style="font-size: 20px;position: relative;top: 260px;left: 100px;">&yen;288.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=144">
						<img src="img/2h.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left:190px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 200px;font-size: 18px;'>永生花*Be My Love</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: 200px;">&yen;398.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 250px;left: 260px;">
					<a href="PruductServlet?pid=145">
						<img src="img/2a.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: 0px;font-size: 18px;'>永生花*花样迷恋</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: 10px;">&yen;379.00</font></p>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<img src="img/1234.jpg" width="300" height="200px">
		</div>
		
		<!--
        	作者：offline
        	时间：2019-06-24
        	描述：商品显示3
        -->
		<div class="container-fluid">
			<div class="col-md-12">
				<h2>热门商品&nbsp;&nbsp;<img src="img/title2.jpg"/></h2>
			</div>
			<div class="col-md-2" style="border: 1px solid #E7E7E7;border-right:0;padding: 0;">
				<img src="products/1/0121.jpg" width="300px" height="600px" style="display: inline-block;"/>
			</div>
			<div class="col-md-10 col-md-pull-1" style="position: absolute;">
				<div class="col-md-6" style="text-align: center;height: 200px;padding: 0px;">
					<a href="PruductServlet?pid=122">
						<img src="products/1/0122.jpg" width="300px" height="300px" style="display: inline-block;position: relative;top:50px" />
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 60px;left: -30px;font-size: 18px;'>送长辈*恩情无限</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 60px;left: -30px;">&yen;152.00</font></p>
				</div>
				<div class="col-md-2 col-md-pull-1" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=123">
						<img src="products/1/0123.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 40px;left: -30px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 50px;left: -30px;font-size: 18px;'>送长辈*圆满</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 50px;left: -30px;">&yen;259.00</font></p>
				</div>
				<div class="col-md-2 col-md-offset-1" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 40px;right: 200px;">
					<a href="PruductServlet?pid=124">
						<img src="img/2d.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>送长辈*真的爱你</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;299.00</font></p>
				</div>
				<div class="col-md-2 yes-right-border" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top:-160px;right: -1300px;">
					<a href="PruductServlet?pid=125">
						<img src="products/1/0125.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: -30px;font-size: 18px;'>送长辈*幸福万年长</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: -30px;">&yen;188.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=126">
						<img src="img/2f.jpg" width="300" height="300" style="display: inline-block;position: relative;top:250px;left: -20px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: -30px;font-size: 18px;'>送长辈*留住好时光</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: -30px;">&yen;252.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=127">
						<img src="products/1/0127.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left: 100px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 100px;font-size: 18px;'>送长辈*感激</a></p>
					<p><font color="antiquewhite"  style="font-size: 20px;position: relative;top: 260px;left: 100px;">&yen;232.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;">
					<a href="PruductServlet?pid=128">
						<img src="products/1/0128.jpg" width="300" height="300" style="display: inline-block;position: relative;top: 250px;left:190px;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 260px;left: 200px;font-size: 18px;'>送长辈*馨情无限</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 260px;left: 200px;">&yen;189.00</font></p>
				</div>
				
				<div class="col-md-2" style="text-align: center;height: 200px;padding: 10px 0px;position: relative;top: 250px;left: 260px;">
					<a href="PruductServlet?pid=129">
						<img src="products/1/0129.jpg" width="300" height="300" style="display: inline-block;"/>
					</a>
					<p><a href="index.jsp" style='color: black;position: relative;top: 10px;left: 0px;font-size: 18px;'>送长辈*常相伴</a></p>
					<p><font color="antiquewhite" style="font-size: 20px;position: relative;top: 10px;left: 10px;">&yen;149.00</font></p>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<img src="img/11111.jpg" width="300" height="200px">
		</div>
		<!--
        	作者：offline
        	时间：2019-06-24
        	描述：页脚部分
       -->
<br>
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