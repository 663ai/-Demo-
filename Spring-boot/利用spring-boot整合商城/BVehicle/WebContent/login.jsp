<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<title>登录_改版蘑菇街</title>
	<!-- <meta name="viewport" content="width=divice-width,initial-scale=1.0,minimum-scale=1.0,maximum=1.0,user-scalable=no" /> -->
	<meta http-equiv=X-UA-Compatible content=IE=8/>
	<link rel="stylesheet" href="./css/normalize.css" type="text/css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" type="text/css" />
	<link rel="stylesheet" href="./css/bootstrap.css"type="text/css"/>
	<link rel="stylesheet" href="./css/login.css" type="text/css" />

	<!-- <script src="./js/jquery-1.7.2.js"></script> -->
	<script src="./js/jquery-1.11.3.js"></script>
	<script src="./js/bootstrap.min.js"></script>

</head>
</head>
<body>
	<div class="wrap"id="wrap">
		<div class="logo" id="logo">
			<a href="#">
<!-- 				<img src="./images/mogulogo_220x52.png" alt="该链接已失效"> -->
			</a>
		</div>
		<div class="register-wrap" id="register-wrap">
			<div class="pic" id="pic">
				<img src="./images/zhuce_400x300.jpg" alt="该链接已失效"/>
			</div>
			<div class="register"id="register">
				<div class="register-top" id="reg-top">
					<h2 class="normal"id="normal">普通登录</h2>
					<h2 class="nopassword"id="nopw">手机无密码登录</h2>
					<a  id="qrcode"href="#"></a>
				</div>

				<!--普通登录-->
				<div class="register-con" id="rc">
					<form method="post"  action="login.action">
						<ul>
							<li id="rc-inner-num">
							<i></i>
							<span>请输入昵称/邮箱/手机号码</span>
							</li>
							<li id="rc-inner-virity">
								<i></i>
								<span>请输入密码</span>
							</li>
							<li class="form-group">
								<input type="text"name="managername"class="form-control"placeholder="昵称/邮箱/手机号码"/>
								<span class="fa fa-check success" style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>
								
							</li>
							<li class="form-group">
								<input type="password"name="passwd" class="form-control"placeholder="密码"/>
								
							</li>
							<li>
								<button class="submit"type="submit"id="login-btn"style="border-radius:5px;">立即登录</button>
							</li>

							<li class="zjdl">
							</li>
							<li>
								<div class="qq"style="border-radius:5px;"></div>
								<div class="weixin"style="border-radius:5px;"></div>
								<div class="weibo"style="border-radius:5px;"></div>
							</li>
						</ul>
					</form>	
				</div>
				<!--手机无密码登录-->
				<div class="login-con" id="lc">
					<form action="#">
					<ul>
						<li id="inner-num">
							<i></i>
							<span>请输入手机号码</span>
						</li>
						<li id="inner-virity">
							<i></i>
							<span>请输入验证码</span>
						</li>
						<li class="lg-num  form-group">
							<select name="country" id="country"class="info-select"style="border-radius:5px;">
								<option value="中国">中国</option>
							</select>
							<input type="text"name="phone-num"class="form-control"placeholder="手机号码"/>	
							<span class="fa fa-check success" style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>
						</li>
						<li class="password form-group">
							<input type="password"name="password"id="pass"class="form-control"placeholder="动态密码"/>
							
						</li>
						<li>
							<button class="getcode"id="getcode"style="border-radius:5px;">获取手机动态密码</button>
						</li>
						
						<li>
							<button class="submit"type="submit"id="login-btn1"style="border-radius:5px;">登录</button>
						</li>
						<li class="zjdl">
						</li>
						<li>
							<div class="qq"style="border-radius:5px;"></div>
							<div class="weixin"style="border-radius:5px;"></div>
							<div class="weibo"style="border-radius:5px;"></div>
						</li>
					</ul>
				</form>	
				</div>
				<!-- 扫码登录 -->
				<div class="saoma" id="sm">
					<div class="screen-tu"id="screen"></div>
					<div class="saoyisao"></div>
					<div class="qr-code">
						<img src="./images/ereima_202x202.png" alt="">
					</div>
					<div class="link">
						<a href="#">点击下载蘑菇街APP</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-wrap">
			<div class="footer-wrap-top">
				<div class="footer-wrap-top-left">
					<dl>
						<dt>新手帮助</dt>
						<dd>
							<a href=""> 如何购买</a>
						</dd>
						<dd>
							<a href="">支付教程</a>
						</dd>
						<dd>
						<a href="">优惠券使用</a>
						</dd>
						<dd>
						<a href="">常见问题</a>
						</dd>
					</dl>
					<dl class="bz">
						<dt>权益保障</dt>
						<dd>
						<a href="">全国包邮</a>
						</dd>
						<dd>
						<a href="">7天无理由退货</a>
						</dd>
						<dd>
						<a href="">退货运费补贴</a>
						</dd>
						<dd>
						<a href="">72小时发货</a>
						</dd>
					</dl>
					<dl>
						<dt> 商家服务</dt>
						<dd>
						<a href="">免费开店</a>
						</dd>
						<dd>
						<a href=""> 商家社区</a>
						</dd>
						<dd>
						<a href="">商家入驻</a>
						</dd>
						<dd>
						<a href="">管理后台</a>
						</dd>
					</dl>
				</div>
				<div class="footer-wrap-top-right">
					<h2>蘑菇街移动客户端</h2>
					<img src="./images/erweima_180x76.png" alt="该链接已失效">
				</div>
			</div>
			<div class="footer-bottom">
				©Copyright 2010-2016蘑菇街 Mogujie.com (增值电信业务经营许可证：浙B2-20110349)			
			</div>
		</div>
	</div>
 	<script src="./js/login.js"></script>
</body>
</html>