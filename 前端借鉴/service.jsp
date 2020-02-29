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
		<div class="breadcrumbs"><a href="index.jsp">首页</a> &gt; 服务声明</div>
		<div class="wrapper help">
			<div class="pull-left w970 l230">
				<div class="box-border">
					<ul class="guidance-list">
						<li><b>为什么选择我们？</b> * 如您是第一次访问我们网站，推荐您浏览！</li>
						<li><b>常见问题</b> * 客户咨询次数最多的问题</li>
						<li><b>购物演示</b> * 在线提交订单的动画演示文件，给您最直观的引导)</li>
					</ul>
					<div class="article">
						<h3>
							<b>SEVICE</b>
							服务声明
						</h3>
						
						<h4>关于订购：</h4>
						<p>欢迎您的惠顾，您可以24小时在线提交订单，我们的工作时间是： 8：30-21：00，如果您是在21：00以后提交订单，且要求在第二天清晨送达，限于实际情况，可能无法实现，第二日下午则不在此限制范围。<br>
						您可以当天提交当天配送的订单，但您需在18：00前提交并支付成功。如果是18：00后才提交和支付，将按如下原则处理：如您的订单在我们配送能力之内，将安排当天送达；否则将直接转移为第二天上午送达。<br>
						上述情况，如果您想确定能否按您的时间送达，请联系我司客服人员确认。 </p>
						<p>每一个订单我们最少将发出3封邮件，分别为：订单提交后通知邮件，确认到款邮件，送达通知邮件。（邮件由系统自动发送。由于网络原因，偶尔会有延迟或收不到的情况，另有部分情况邮件将出现在垃圾文件夹。） </p>
						<br><br>
						
						<h4>关于支付：</h4>
						<p>如果您选择的是非网上支付方式，请您付款后务必及时通知我们，通知途径：电话、短信、传真、在线客服任选其一。如果未收到您的付款通知，我们将无法查实您的款项，订单将不会被安排，敬请支持。</p>
						<!--<p>关于上门收款：(上门收款仅开通部分大中城市，具体的开通城市请<a href="#">参见上门收款说明</a>)，我们在收到上门收款订单后，将尽快与订购人联系确认。如果您所留联系电话/手机无法及时联系到您，我们无法保证订单及时配送。请您提供完上门收款订单后，通知我司客服确认订单有效。注意事项：上门收款地址必须是市区；上门收款需收取10元上门收款服务费；如选择上门收款服务，需在配送日期基础上至少提前一天订购。</p>-->
						<br><br>
						
						<h4>配送说明：</h4>
						<p>请点击参阅配送说明条款。</p>
						<p>如果我们在安排您的订单时，确认到您所配送的地址为郊区或者远郊，而您没有正确选择和支付相应配送费用时，我们将联系您告知配送地址和配送费用的情况，针求您的意见后处理订单。如果通过您所留联系方式我们无法及时联系到您，且您已成功支付订单中的货款，只是未支付或未足额支付配送费用，且配送费用少于60元时，我们默认将先安排配送订单，不影响订单配送，我们将另找时间再尝试联系您补付相关配送费用。如果所需补付配送费用多于60元，且我们无法通过您所留联系方式及时联系到您，所造成的订单延误我们将不承担责任。</p>
						<p>有关配送时间的特别说明： <br>
						原则上，我们不承诺“?点?分”这样很具体的时间送达，我们只承诺类似“?月?日上午、下午、晚上”或？点以前”这样的时间送达。但如果您确有特殊要求，可在“特殊要求”栏内注明，我们将尽力按照您要求的时间完成。但如果确有特殊原因：如收花人联系不到、城市严重交通问题等，而造成递送时间的拖延，我们将不承担赔偿责任。提交订单时您可以选择上午(8:30-12:00)、下午(12:00-18:00)、晚上(18:00-21:00)三个时段，特别提示：如果下单时间距离所选时段少于3小时，客户所选时段无法满足的情况下，将尽量在客户付款后3小时内送到。</p>
						<br><br>
						
						<h4>关于鲜花：</h4>
						<p>我们可以保证送到您手中时鲜花是新鲜的，请收货人在收到后务必立刻进行保鲜处理，以免影响货品的品质。</p>
						<p>由于鲜花的季节性和供货渠道变化性较强，可能您选择的某种花材无法供应，对于非主要花材，我们在尽量不影响您所选的鲜花效果的情况下，按照寓意相同、类似花材价值相同替代原则代替，对于主要花材，我们将在征求您的意见后进行处理，恳请您谅解；</p>
						<p>由于鲜花的保鲜时间短，如果在您要求送达的时间内，收货人不在您所提供的地址且该地址无认识收货人的代收人，我们将与收货人和订购人联系，如果都无法联系上耽误配送，我们可根据情况决定是否再次配送。如果收货人非我方原因拒收货品，我们将与订购人联系沟通，如果鲜花保鲜期已过，仍无法通过订单所留联系方式联系到订购人，或订购人知情后仍未给出回复，订单视为送达。</p>
						<p>如果您需要送达的城市不在我们《配送范围》列表，请您与我们的客服人员联系，我们将尽力帮您解决。 <br>
							如果您在填写订单时：所要送达的地址不在我们的《配送范围》，或者远远超出了市区，可能需要加收配送费，请您与我们的客服人员沟通确认。如果我们无法通过您所留联系方式及时联系到您，超出配送时间3天，将按撤单处理，您所付的货款会将默认存入您的会员帐户，在与您取得联系后，根据您指定的方式退回。</p>
							<br><br>
						
						
						<br><br>
					</div>
				</div>
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