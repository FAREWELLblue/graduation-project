<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>购物车</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<script type="text/javascript"> 
					/* $.get("test.php", function(data){
				          alert("Data Loaded: " + data);
				}); */
				
				/* $(".count").each(function(){
					alert(1122);
					$(this).change(function(){
						// 获取当前元素的值
						var count=$(this).val();
						alert(count);
						// 获取对应的购物车id（cid）
						// 将数据传到服务器
						//
						
					})
				}) */
				
				
				
				
				
				
				
				
				
					function checkAll(obj){
						var ck=$(obj).prop("checked");//全选状态
						$(".cid").each(function(){
							var cid=$(this)[0];
							cid.checked=ck;				//所有复选框状态与全选按钮一致
						})
						total();
					}
					function total(){
						var total=0;
						$(".cid").each(function(){
							if($(this).prop("checked")){	//判断复选框状态是否被选中
								var cid=$(this)[0].value;		//获取复选框所存cid的值
								var price=$("#price"+cid).text();	//根据cid获取对应的价格
								total+=parseFloat(price);		//将价格累加
							}
						})
						$("#totalprice").text(total);			//将总价格显示到页面元素中
						$("#total").val(total);
					
					}
					function check(){
						var count=0;//记录未选中的数量
						$(".cid").each(function(){
							if(!$(this).prop("checked")){
								count++;
							}
						})
						var all=$("#checkAll")[0];
						if(count>0){
							
							all.checked=false;
						}else{
							all.checked=true;
						}
						total();
					}
					function toserver(obj){
						var count=obj.value;
						var cid=$(obj).attr("data");
						$.get("UpdateCartCount?cid="+cid+"&count="+count, function(data){
					          $("#price"+cid).text(data);
					          total();
						});
						
					}
					
					</script>
		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
			
			.container .row div {
				/* position:relative;
	 float:left; */
			}
			
			font {
				color: #3164af;
				font-size: 18px;
				font-weight: normal;
				padding: 0 10px;
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
        				<form class="navbar-form navbar-right" role="search">
        					<div class="form-group">
        						<input type="text" class="form-control" placeholder="搜索"/>
        					</div>
        					<button type="button" class="btn btn-danger">搜索</button>
        					</form>
        			</div>
		</nav>


		<div class="container">
			<div class="row">

				<div style="margin:0 auto; margin-top:10px;width:1050px;">
					<strong style="font-size:16px;margin:5px 0;">订单详情</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
								<th ><input type="checkbox" id="checkAll" onchange="checkAll(this)" > 全选</th>
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
					
					<form  action="AddOServlet" method="post">
							<c:forEach items="${carts }" var="cart">
							<tr class="active">
								<td width="80" width="40%">
									<input type="checkbox" name="cid" class="cid" value="${cart.cid}" onchange="check()">
									
								</td>
								<td width="60" width="40%">
									
									<img src="${cart.pimage}" width="70" height="60">
								</td>
								<td width="30%">
									<a target="_blank">${cart.pname }</a>
								</td>
								<td width="20%">
									${cart.price }
								</td>
								<td width="50">
								${cart.numb }
								</td>
								<td width="15%">
									<span class="subtotal" id="price${cart.cid }">${cart.sum}</span>
								</td>
								<td>
									<a href="DeleteCServlet?cid=${cart.cid }" class="delete">删除</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div style="margin-right:130px;">
				<div style="text-align:right;">
					<em style="color:#ff6600;">
				商品金额: <strong style="color:#ff6600;"><input type="text" name="total" size="5" id="total" readonly="readonly">元</strong>
				</div>
				<div style="text-align:right;margin-top:10px;margin-bottom:10px;">
					<a href="DeleteACServlet" id="clear" class="clear">清空购物车</a>
					<a href="order_info.htm">
						
						<input type="submit" width="100" value="提交订单" name="submit" border="0" style="background: url('./images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
						height:35px;width:100px;color:white;">
					</form>
					</a>
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