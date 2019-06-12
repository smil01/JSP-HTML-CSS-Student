<%@page import="com.member.MemberDTO"%>
<%@page import="com.message.MessageDTO"%>
<%@page import="com.message.MessageDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				
					<header id="header" class="alt">
						<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>	
								<%=info == null ? "<a href='#menu'>ログイン</a>" :"<a href='update.jsp'>会員情報修正</a> <a href='Logout.do'>ログアウット</a>"%>
							<!-- 로그인 후 Logout.jsp로 이동할 수 있는'로그아웃'링크와 '개인정보수정'링크를 출력하시오. -->
						</nav>
					</header>
				

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
							<li><h5>ログイン</h5></li>
								<form action="Login.do" method="post">
									<li><input type="text"  placeholder="Emailを入力してください。" name="email"></li>
									<li><input type="password"  placeholder="PWを入力してください。" name="pw"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>会員加入</h5></li>
								<form action="Join.do" method="post">
									<li><input type="text"  placeholder="Emailを入力してください。" name="email"></li>
									<li><input type="password"  placeholder="PWを入力してください。" name="pw"></li>
									<li><input type="text"  placeholder="電話番号を入力してください。" name="tel"></li>
									<li><input type="text"  placeholder="住所を入力してください。" name="addr"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
									<h1><%=info == null ? "ログインお願い致します。" : info.getEmail()+"様いらっしゃいませ。"%></h1>
								<!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
									 ex)smart님 환영합니다 -->
							</header>
							<div class="content">
								<p>下には、今まで教えて頂いた内容がございます。<br></p>
								<ul class="actions">
									<li><a href="#one" class="button next scrolly">確認</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>ホームパージを作る基本的な言語</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTMLをデジャーインされる言語</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Javaを基本したWEB言語</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTMLに基本的に定義できる言語</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>WEBで一番使われるデジャーインパターン</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>皆さんの最後のプロゼットに乙かってください。!</p>
									</header>
								</article>
							</section>
					<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>私のメッセジ確認</h2>
									</header>
									<p></p>
									<ul class="actions">
										<%if(info == null){ %>									
										<li>ログインお願い致します</li>
										<%} else { %>
										<% MessageDAO dao = MessageDAO.getDao();
										   ArrayList<MessageDTO> list = dao.search(info.getEmail());
										   for(int i = 0; i<list.size(); i++){%>
										   		<li><%=list.size()-i + "."%></li>
										   		<li><%=list.get(i).getSend_name() + ":"%></li>
										   		<li><%=list.get(i).getContent()%></li>
										   		<li><%="時間:" + list.get(i).getDay()%></li>
										   		<li><a class="button next scrolly" href="MessageDelectService.do?num=<%=list.get(i).getNum()%>">削除</a></li><br><br>
										   <%}%>
										<li><a href="MessageDeleteAllService.do" class="button next scrolly">全体的に削除に行く</a></li>
										<%}%>
									</ul>
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
								<form action="MessageInsertService.do" method="post">
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text"  id="name" placeholder="送る名前" name="send_name"/>
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text"  id="email" placeholder="送るイーメール" name="recevie_email"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea  id="message" rows="6" name="content"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<a href="#"><%=info!=null?info.getEmail():"ログインお願い致します。"%></a>
										<!-- 로그인 한 사용자의 이메일을 출력하시오 -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<span><%=info!=null?info.getTel():"ログインお願い致します。"%></span>
										<!-- 로그인 한 사용자의 전화번호를 출력하시오 -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<span><%=info!=null?info.getAddr():"ログインお願い致します。"%></span>
										<!-- 로그인 한 사용자의 집주소를 출력하시오 -->
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>

