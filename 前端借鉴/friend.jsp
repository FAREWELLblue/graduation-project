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
    <div class="breadcrumbs"><a href="index.jsp">陌上花开网</a> &gt; 友情链接</div>
    <div class="wrapper about">
        <div class="pull-left w970 l230">
            <div class="box-border">
                <div class="article">
                    <h3>
                        <img src="//img02.hua.com/pc/pimg/about_bg_21.jpg" height="50" width="310">
                        <b>LINK</b>
                        友情链接
                    </h3>
                    <table width="98%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" style="line-height:200%">
                                <table style="border-collapse:collapse" width="95%" border="1" cellpadding="5" cellspacing="0" bordercolor="#CCCCCC">
                                    <tr>
                                        <td align="center"><a href="https://www.hua.com/" target="_blank"><img src="//img02.hua.com/pc/images/flowercn_88x31.gif" border="0" width="88" height="31" alt="中国鲜花礼品网" /></a></td>
                                        <td height="46" align="center"><a href="http://www.china-flower.com/" target="_blank"><img src="//img02.hua.com/pc/images/logo_cfn.gif" alt="中国花卉网" width="88" height="31" border="0" /></a></td>
                                        <td align="center"><a href="http://www.dahangzhou.com" target="_blank"><img src="//img02.hua.com/pc/images/LOGO_dahangzhou.gif" width="88" height="31" border="0" alt="大杭州" /></a></td>
                                        <td align="center"><a href="http://www.felissimo.com.cn/" target="_blank"><img src="//img02.hua.com/pc/images/logo_felissimo.jpg" width="88" height="31" border="0" /></a></td>
                                        <td align="center"><a href="http://www.keede.com/" target="_blank"><img src="//img02.hua.com/pc/images/keedelogo.gif" width="88" height="31" border="0" alt="可得眼镜" /></a></td>
                                        <td width="150" align="center"><a href="http://www.salawed.com/" target="_blank"><img src="//img02.hua.com/pc/images/logo_salawed.gif" width="88" height="31" border="0" alt="莎啦婚嫁网" /></a></td>
                                    </tr>
                                    <tr>
                                        <td width="150" align="center"><a href="http://www.8photo.cn/" target="_blank"><img src="//img02.hua.com/pc/images/2013-05-17.jpg" width="88" height="31" border="0" alt="婚纱摄影" /></a></td>
                                        <td width="150" height="46" align="center">&nbsp;</td>
                                        <td width="150" align="center">&nbsp;</td>
                                        <td width="150" align="center">&nbsp;</td>
                                        <td width="150" align="center">&nbsp;</td>
                                        <td width="150" align="center">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="line-height:200%">&nbsp;</td>
                        </tr>
                    </table>
                    <table width="98%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" style="line-height:200%">
                                <table style="border-collapse:collapse" width="95%" border="1" cellpadding="5" cellspacing="0" bordercolor="#CCCCCC">
                                    <tr>
                                        <td width="16%"> <div align="center"><a href="http://www.womai.com/" target="_blank">我买网购物</a></div></td>
                                        <td width="16%" height="46"> <div align="center"><a href="http://www.ixi360.cn/" target="_blank">爱喜婚尚-婚礼</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.mbaobao.com/" target="_blank">麦包包</a></div></td>
                                        <!-- <td width="16%"> <div align="center"><a href="http://www.a-life.cn" target="_blank">a-life最生活</a></div></td> -->
                                        <td width="16%"> <div align="center"><a href="http://www.taoxie.com/" target="_blank">淘鞋网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.5lux.com/" target="_blank">第五大道奢侈品网</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.unscard.com/" target="_blank">商联卡</a></div></td>
                                    </tr>
                                    <tr>
                                        <td width="16%" height="46"> <div align="center"><a href="http://www.justonline.cn/" target="_blank">Justyle</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.xiu.com/" target="_blank">走秀网</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.yihaodian.com/" target="_blank">网上商城</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.zbird.com/news/detail/id/1429/" target="_blank">钻石等级</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.moonbasa.com/" target="_blank">梦芭莎</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.ehmall.com.cn/" target="_blank">电视购物</a></div></td>
                                    </tr>
                                    <tr>
                                        <td width="16%" height="46"><div align="center"><a href="http://www.pb89.com/" target="_blank">太平鸟</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.vancl.com/" target="_blank">凡客诚品</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.dionly.com/" target="_blank">戴欧妮钻石</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.s.cn/p-0-123-51.html" target="_blank">皮鞋</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.spider.com.cn/" target="_blank">蜘蛛网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.51fashion.com.cn/" target="_blank">时尚饰界</a></div></td>
                                    </tr>
                                    <tr>
                                        <td width="16%" height="46"> <div align="center"><a href="http://www.xituan.com/" target="_blank">喜团网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://china.trade2cn.com/" target="_blank">中国诚商网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.lidodo.com/" target="_blank">礼多多</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.ymatou.com/" target="_blank">洋码头</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.gome.com.cn/" target="_blank">国美在线</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.hhsq.net/" target="_blank">花卉商情</a></div></td>

                                    </tr>
                                    <tr>
                                        <td width="16%" height="46"><div align="center"><a href="http://www.hnhm.com/" target="_blank">花木</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.ynhmw.com/" target="_blank">云南花木网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.obolee.com/" target="_blank">订婚戒指</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.xiaomishu.com/" target="_blank">网上订餐</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.tejiawang.com/" target="_blank">特价王</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://seller.dhgate.com/" target="_blank">外贸b2b网站</a></div></td>
                                    </tr>
                                    <tr>
                                        <td width="16%" height="46"><div align="center"><a href="http://www.sfbest.com/" target="_blank">网上超市</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.wbiao.cn/" target="_blank">万表网</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.bloves.com/" target="_blank">钻戒</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.doido.com/" target="_blank">爱度钻石</a></div></td>
                                        <td width="16%"><div align="center"><a href="http://www.cnhm.net/" target="_blank">中国花木网</a></div></td>
                                        <td width="16%"> <div align="center"><a href="http://www.huamu.cn/" target="_blank">花木网</a></div></td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="line-height:200%">&nbsp;</td>
                        </tr>
                    </table>

                    <div class="links_text" style="font-size:12px;">
                        <h4><font style="font-size:16px;">申请友情链接</font></h4>
                        <div class="links_apply cl">
                            <dl>
                                <dt>申请步骤及要求</dt>
                                <dd>1、需要您的网站在百度/google收录正常，PR>4，日独立访问IP>2万。花卉园艺/礼品/鲜花相关网站可适当放宽。</dd>
                                <dd>2、请先在贵网站做好我们的文字友情链接：<br>链接文字：陌上花开网  链接地址：https://www.FlagCN.com/</dd>
                                <dd>3、请您做好链接后，在右侧填写贵站信息，请注明链接要求：首页互换/内页互换/首页换内页。</dd>
                                <dd>4、经审核后，符合本站友链要求的网站，将加至友情链接页或是首页。</dd>
                                <dd>5、联系方式：李小姐  QQ 2355676702  电话 0755-26661662 </dd>
                            </dl>
                            <form action="index.jsp" method="post">
                             
                                申请信息:<br>
                                网站名称：<input type="text" id="txtSiteName"><br><br>
                                网　　址：</label><input type="text" id="txtUrl"><br><br>
                                电话号码：</label><input type="text" id="txtPHONE"><br><br>
                                QQ  号码：<input type="text" id="txtQQ"><br><br>
                                网站介绍及友链要求：<textarea id="txtSiteContent"></textarea><br><br>
 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                              <input type="submit" value="提交 " id="btnFriendLink" onclick="alert('提交成功！')">
                          <br><br>
                            </form>
                           
                        </div>
                    </div>
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