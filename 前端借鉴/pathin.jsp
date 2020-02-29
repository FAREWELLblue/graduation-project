<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
    
<!doctype html>
<html>
	<head></head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>加入联盟</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<style>
  body{
   margin-top:20px;
   margin:0 auto;
 }
 .carousel-inner .item img{
	 width:100%;
	 height:300px;
 }
 .container .row div{ 
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
 <script type="text/javascript">
 function _hyz() {
		var img = document.getElementById("VerifyCode");
		img.src = "VerifyCodeServlet?a="+new Date().getTime();
	}
 </script>
 <script type="text/javascript">
$(function () {
   $("#uname").blur(function() {
   var value= $("#uname").val();
   $.ajax({
	   url:"Ajax",//要请求服务器url servlet的路径 
	   data: {val:value},//这是一个对象，它表示请求参数参数。
	                                    //服务器可以用request.GETP获取
	   async:true,//是否为异步请求
	   cache:false,//是否缓存结果
	   type:"POST",//请求方式
	   dataType: "text",//服务器返回的数据是什么类型。
	   success: function(result) {
			$("#umsg").text(result);
		
	}
   });
});
});
</script>
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
            
        </div>
        <div class="service serviceDefault">
            <span class="ico ico-phone"></span>400-889-8188：在线客服</a>
        </div>
        <span>钻石专线：400-830-3920</span>
    </header>
    <!-- 头部 End -->
    



<div class="breadcrumbs1"><a href="index.jsp">首页</a> &gt; 花店连锁加盟 &gt; 花店加盟首页</div>
<div class="aboutallbox">
    <div class="inbasebox_L1">
        <!-- 连锁加盟 -->
        <div class="liansuo1_box">

            <div class="title">花店加盟说明</div>

            <div class="borderct">
                <div class="incontent">
                    <ul class="ul10">
                        <li>连锁花店加盟介绍</li>
                        <li>连锁加盟花店流程</li>
                        <li>连锁加盟花店FAQ</li>
                        <li>配送店免费加入</li>
                    </ul>
                </div>
            </div>

            <div class="imgbottom"></div>
        </div>
    </div>

    <div class="inbasebox_R1">
        <!-- TOP当前位置start -->
        <div class="rightdqwz">
            <div class="intopdqwz_box">
            </div>
            <!-- TOP当前位置End -->
            <!-- rightbox -->
            <div class="rabox">
                <div class="slider">
                    <a href="/liansuo/FranchiseApply">
                        <img src="//img02.hua.com/slider/slide_liansuo.jpg" width="100%">
                    </a>
                </div>
                <div class="content" style="margin-bottom:18px;">
                    <div class="incontent">
                   <div class="col-md-2">     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                            <tr>
                                <td>
                                    <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle">
                                    <font color="#77AA33"><strong>[陌上花开店加盟] 加盟条件</strong></font><br>
                                    1，自有花店，经营3年以上，区位优势，从业人员在3人以上，且经营状况良好；<br>
                                    2，花艺优秀,有专业花艺师；<br>
                                    3，有电脑，可以接入互联网或备有传真机；<br>
                                    4，有强烈的合作愿望，注重服务和信誉；<br>
                                    加盟负责人：鹿小姐，电话：0755-26668820，QQ：2355363581<br>
                                    </td>
                                    </tr>
                                    </table>
                                    </div>
    <div class="col-md-8" style="background:block;padding:40px 80px;margin:30px;border:0px solid #ccc;" height="40" align="center">
    <span style="font-size:15px"><font color="#77aa33"><strong>陌上花开店加盟申请表</strong></font></span><br>
		<font >盟友注册</font>
		<form class="form-horizontal" style="margin-top:5px;" action="" method="post" >
			 <div class="form-group">
			    <label for="username" class="col-sm-2 control-label">花店名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="uname" name="uname" placeholder="请输入花店名"><span id="umsg"></span>
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-6">
			      <input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入密码">
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
			    <div class="col-sm-6">
			      <input type="password" class="form-control" id="cpwd" name="cpwd" placeholder="请输入确认密码">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			    <div class="col-sm-6">
			      <input type="email" class="form-control" id="email" name="email" placeholder="Email">
			    </div>
			  </div>
			 <div class="form-group">
			    <label for="usercaption" class="col-sm-2 control-label">姓名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control"id="name" name="name" placeholder="请输入姓名">
			    </div>
			  </div>
			  <div class="form-group opt">  
			  <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>  
			  <div class="col-sm-6">
			    <label class="radio-inline">
			  <input type="radio" name="sex" id="sex"   value="男"> 男
			</label>
			<label class="radio-inline">
			  <input type="radio" name="sex" id="sex" value="女"> 女
			</label>
			</div>
			  </div>		
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">验证码</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" name="Verify"  >
			      
			    </div>
			    <div class="col-sm-2">
			    <img src="VerifyCodeServlet" id="VerifyCode"/><a href="javascript:_hyz()">看不清刷新</a>
			    </div>
			    
			  </div>
			 
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <input type="submit"  width="100" value="申请加入" name="submit" border="0"
				    style="background:pink; no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;" onclick="alert('资料已成功提交！请等待同意！')">
			    </div>
			  </div>
			</form>
	</div>
	
                       
                        <p>
                            <br />
                            <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle">
                            <font color="#77AA33"><strong>关于花店连锁</strong></font><br>
                            <br>
                            连锁是以提供消费品和服务为主要经营对象，通过标准化的技术和多店铺扩张的方式发展事业的一种经营方式！<br>
                            <br>
                            连锁加盟商可以在约定的期限内享有使用特许人的商标、产品或经营技术，以及特许人提供的信息和培训等，这一方面使特许人可在不需要大量资金的情况下，快速拓展自已的业务体系，另一方面使加盟商在缺少行业经验的情况下，以低风险投资顺利的解决创业过程中的许多问题，能在创业之初就顺利地以成熟的面貌开始经营。<br>
                            <br>
                            <br>
                            <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle">
                            <font color="#77AA33"><strong>[陌上花开店加盟]关于我们</strong></font><br>
                            “真情传递，从 陌上花开网开始”！<br>
                            <br>
                            陌上花开网，一个富有情感传递文化的消费园地，覆盖全国全部省会城市、大中型城市及绝大部分中小城市，现在拥有超过六百多个分布在全国各地的连锁城市配送，成为行业内有影响力的专业网络鲜花和礼品连锁机构，开始走上创立中国网络鲜花速递品牌之路。<br>
                            <br>
                            陌上花开网目前已经在全国内实现了配送服务，实现了异地互动配送模式。从而确立了 陌上花开网在网下市场的定位。从连锁品牌来说，目前是很具有潜力发展的市场，通过网络的宣传，陌上花开网已经在网下具有很高的知名度，陌上花开网一直以时尚、前卫且市场消费潜力巨大的鲜花业为经营主业，网下的市场与网络市场相结合，连锁加盟店的开设，品牌的树立，市场的正确定位，无疑将具有非常重大的意义！<br>
                            <br>
                            陌上花开网，一个您可以信赖、值得信赖的品牌，陌上花开网欢迎每一位有志人士加盟，加入陌上花开网这个充满亲情及温情的大家庭，并肩创造，共同分享！<br>
                            <br>
                            <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle">
                            <font color="#77AA33">
                                <strong>
                                    [陌上花开店加盟]我们的优势<br>
                                </strong>
                            </font>　　一、品牌：陌上花开网致力于品牌发展。您可以在我们的授权范围内，使用 陌上花开网的品牌和知识产权，包括：域名、徽标、名称、商标等进行合法经营活动，突显您的花店是全国连锁的鲜花店。这是您实力的象征。亦是消费信心的保障。
                        </p>
                        <p><strong><font color="#77AA33">　　</font></strong>二、技术：陌上花开网的技术人员具有丰富的电子商务网站开发经验。在系统的稳定性。支付的安全性方面，具有良好的声誉。解决了客户的购物疑虑。同时也是国内最完善的鲜花礼品类电子商务交易平台。致力为花店和购花人构建安全便捷的交易桥梁。</p>
                        <p>　　三、网络：陌上花开网全国各地拥有加盟和配送店达1000多个，可实现网上网下资源的共享、有效配置。通过我们的配送网络，你的服务范围可扩展到全国各地甚至全球。</p>
                        <p>
                            <strong><font color="#77AA33">　　</font></strong>四、服务：为花店带来更多的顾客。为顾客带去更好的鲜花。让花店赚到更多的钱。使顾客付出最少，得到更多。<br>
                            <br>
                        <p>
                            <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle" /> <font color="#77AA33"><strong>[陌上花开店加盟]加盟方式</strong></font><br />
                            符合条件的花店， 可以选择2种加盟方式
                            ：<br />
                            一、配送店：二级城市以及县市，符合上述加盟条件者经审核合格后，可以免费加入成为配送店。
                        </p>
                        <p>二、正式加盟店：直辖市、省会城市、沿海地区重要城市以及经济特区，符合上述加盟条件者可以申请加入成为正式加盟店（需进行资质/花艺及服务审核）。</p>
                        <p>
                            <br>
                            <img src="//img02.hua.com/pc/Images/flower_logo_icon.gif" width="16" height="17" align="absmiddle">
                            <font color="#77AA33">
                                <strong>
                                    [陌上花开店加盟]费用标准 <br>
                                </strong>
                            </font>一、配送店：<font color="#FF0000">免费加入</font>（需符合上述加盟条件）
                        </p>
                        <p>
                            二、加盟店<br>
                            A类：首都、直辖市、沿海地区以及经济特区。
                            <br>
                            信誉保证金：6000元RMB（将无息返还）
                            <br>
                            <br>
                            B类：省会城市。
                            <br>
                            信誉保证金：3000元RMB（将无息返还）  　　<br>
                            <br>
                            C类：二级城市以及县市
                            <br>
                            信誉保证金：2000元RMB（将无息返还）
                            <br>
                            <br>
                        </p>
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
		</body></html>