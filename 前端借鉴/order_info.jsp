﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
    
<!doctype html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>订单详情</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
		</style>
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
        <nav class="navbar navbar-default">
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
		</nav>
		<div class="container">
			<div class="row">

				<div style="margin:0 auto;margin-top:10px;width:950px;">
					<strong>订单详情</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
								<th colspan="5">订单编号:${neworder.oid } </th>
							</tr>
							<tr class="warning">
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
							</tr>
							<c:forEach items="${neworder.items}" var="ite">
							<tr class="active">
								<td width="60" width="40%">
									<input type="hidden" name="id" value="22">
									<img src="${ite.pimage }" width="70" height="60">
								</td>
								<td width="30%">
									<a target="_blank">${ite.pname }</a>
								</td>
								<td width="20%">
									￥${ite.price}
								</td>
								<td width="10%">
									${ite.numb }
								</td>
								<td width="15%">
									<span class="subtotal">￥${ite.sum }</span>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<div style="text-align:right;margin-right:120px;">
					商品金额: <strong style="color:#ff6600;">￥${neworder.total }元</strong>
				</div>

			</div>

			<div>
				<hr/>
				<form  id="orderForm" action="AffirmOServlet" class="form-horizontal" style="margin-top:5px;margin-left:150px;">
					<input type="hidden" name="oid" value="${neworder.oid }">
					<div class="form-group">
						<label for="username" class="col-sm-1 control-label">地址</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="address" name="address" placeholder="请输入收货地址">
						</div>
					</div>
				</form>

				<hr/>

				<div style="margin-top:5px;margin-left:150px;">
					<strong>选择银行：</strong>
					<p>
						<br/>
						<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked" />工商银行
						<img src="./bank_img/icbc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="BOC-NET-B2C" />中国银行
						<img src="./bank_img/bc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行
						<img src="./bank_img/abc.bmp" align="middle" />
						<br/>
						<br/>
						<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行
						<img src="./bank_img/bcc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="PINGANBANK-NET" />平安银行
						<img src="./bank_img/pingan.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" />建设银行
						<img src="./bank_img/ccb.bmp" align="middle" />
						<br/>
						<br/>
						<input type="radio" name="pd_FrpId" value="CEB-NET-B2C" />光大银行
						<img src="./bank_img/guangda.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C" />招商银行
						<img src="./bank_img/cmb.bmp" align="middle" />

					</p>
					<hr/>
					<p style="text-align:right;margin-right:100px;">
						<a href="javascript:document.getElementById('orderForm').submit();">
							<img src="./images/finalbutton.gif" width="204" height="51" border="0" />
						</a>
					</p>
					<hr/>

				</div>
			</div>

		</div>

		<div style="margin-top:50px;">
			<img src="./image/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
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