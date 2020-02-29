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
		 
                                    <div class="item-content" style="margin-top: 36px;">
                                        <p class="num">01</p>
                                        <div class="item-content-box">
                                            <p class="item-content-title">12道品控标准+送前实拍</p>
                                            <p class="item-content-desc">行业内率先研发并实施12道严苛品控标准：从花材采购、制作、成品、配送、售后全程覆盖，将产品及服务标准化。</p>
                                        </div>
                                    </div>
                             
                                <div class="item item-right" data-aos="fade-right" data-aos-duration="1000" data-aos-once="true">
                                    <div class="item-content" style="margin-top: 20px;">
                                        <p class="num">02</p>
                                        <div class="item-content-box">
                                            <p class="item-content-title">实力花艺团队</p>
                                            <p class="item-content-desc">国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。</p>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="item item-left" data-aos="fade-left" data-aos-duration="1000" data-aos-once="true">
                                    
                                    <div class="item-content" style="margin-top: 36px;">
                                        <p class="num">03</p>
                                        <div class="item-content-box">
                                            <p class="item-content-title">1-3小时极速送花</p>
                                            <p class="item-content-desc">门店覆盖全国2000+城市，由当地门店新鲜制作，专人专车送货上门，最快1小时送达，快人一步！</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item item-right" data-aos="fade-right" data-aos-duration="1000" data-aos-once="true">
                                    <div class="item-content" style="margin-top: 20px;">
                                        <p class="num">04</p>
                                        <div class="item-content-box">
                                            <p class="item-content-title">大规模客服团队</p>
                                            <p class="item-content-desc">建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。</p>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                                    
                                    <div class="item-content" style="margin-top: 36px;">
                                        <p class="num">05</p>
                                        <div class="item-content-box">
                                            <p class="item-content-title">不只鲜花·跨界音乐微电影</p>
                                            <p class="item-content-desc">联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。</p>
                                        </div>
                                    </div>
 
                    
                            <p class="para">我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。</p>
                       
        
      


		
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