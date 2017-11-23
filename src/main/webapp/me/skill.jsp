<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>


<html>

<head>
<meta charset="UTF-8">
<meta name="keyword" content="itronys,元赛,tech" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bigscreen.css" media="only screen and (min-width: 1025px)" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/smallscreen.css" media="only screen and (max-width: 1024px)" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/materialize.css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/ico/itronys.ico" media="screen" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>Coder-Qian:skill</title>
</head>

<body>

	<div id="left" class="left-content">
		<div class="avatar">
			<a href=" "> <img src="${pageContext.request.contextPath }/img/logo.jpg"/></a>
		</div>
		<div class="info">
			<span>Coder-Qian</span>
		</div>
		<div class="list">
			<ul>
				<li><a href="${pageContext.request.contextPath }/index.jsp">主页</a></li>
				<li><a class="active" href="${pageContext.request.contextPath }/me/skill.jsp">技术</a></li>
				<li><a href="${pageContext.request.contextPath }/me/blog.jsp"><img src="${pageContext.request.contextPath }/img/lock.png" />&nbsp博客&nbsp&nbsp&nbsp</a></li>
				<li><a href="${pageContext.request.contextPath }/me/resume.jsp"><img src="${pageContext.request.contextPath }/img/lock.png" />&nbsp简历&nbsp&nbsp&nbsp</a></li>
				<li><a href="${pageContext.request.contextPath }/me/download.jsp"><img src="${pageContext.request.contextPath }/img/lock.png" />&nbsp下载&nbsp&nbsp&nbsp</a></li>
				<li><a href="${pageContext.request.contextPath }/me/contact.jsp">联系</a></li>
			</ul>
		</div>
		<div class="contact">
			<a href="https://github.com/Coder-Qian"><img src="${pageContext.request.contextPath }/img/github.png"></a> 
			<a href="http://blog.csdn.net/ManagementAndJava/article/details/51404695"><img src="${pageContext.request.contextPath }/img/csdn.jpg"></a> 
			<a href="https://twitter.com/"><img src="${pageContext.request.contextPath }/img/twitter.png"></a>
		</div>
	</div>
	
	<div id="right" class="right-content">
		<div class="page-tech">
			<div class="on"></div>
			<div class="list">
				<div class="card chr">
					<div></div>
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/javase.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">Java SE基础知识</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2013-01-01</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>《java编程思想》《高级程序语言Java》《Head First Java》 IO,容器,线程,TCP.....
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>传智播客：毕向东java视频教程。
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/tomcat.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">Java EE原生技术</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2014-12-1</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>《Servlet Api》,JDBC,TOMCAT,JSP......。
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>传智播客：李勇JDBC教程，韩顺平Servlet Tomcat教程，API.....
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/ssh.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">SSH SSM框架技术</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>Struts, Struts2, Spring MVC, Spring, Hibernate, MyBaits......
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>动力节点：王勇Strust1+Struts2+Spring+Hibernate教程，Reyco SpringMVC
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>掌握执行流程，分析框架源码，吸取框架思想，总结设计模式
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/oracledb.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">DB技术</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>Sql Server, Oracle 《SQL必知必会》，《数据库设计》,《ORACLE学习笔记》。
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>传智播客：韩顺平ORACLE从入门到精通视频教程。
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/linux.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">CentOS7操作系统</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>VIM SHELL 《鸟哥Linux私房菜》, Linux公社。
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>配环境，搭JAVA WEB环境，更高的运维、监控技术处于进行时......
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/projectMa.jpg"></a>
					<div class="content">
						<a class="title truncate" href="${pageContext.request.contextPath }/me/tech_article.jsp">项目开发管理</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>Maven 生命周期 私服建立, GitHub,。
						</p>
					</div>
				</div>
				<div class="card chr">
					<a class="img" href="${pageContext.request.contextPath }/me/tech_article.jsp"> <img src="${pageContext.request.contextPath }/img/webBf.jpg"></a>
					<div class="content">
						<a class="title truncate" href="/me/tech_article.jsp">Web前端技术</a>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<p class="sub">
							<i class="material-icons">lens</i>HTML5 CSS3 JAVASCRIPT JQUERY AJAX.......。
						</p>
					</div>
				</div>
			</div>
			
				<div style="text-align: center;">
						<p class="sub">
							<h5> 追求是一种态度，不要放下你学习的脚步LET US GO.......</h5>
						</p>
				</div>
			
			<div class="pages">
				<ul class="pagination">
					<li class="disabled"><a href="#"><i class="material-icons">chevron_left</i></a></li>
					<li class="active"><a href="#">1</a></li>
					<li class="waves-effect"><a href="#">2</a></li>
					<li class="waves-effect"><a href="#">3</a></li>
					<li class="waves-effect"><a href="#">4</a></li>
					<li class="waves-effect"><a href="#">5</a></li>
					<li class="waves-effect"><a href="#"><i class="material-icons">chevron_right</i></a></li>
				</ul>
			</div>
			<div class="footer">
				<p>© Coder-Qian</p>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/js/materialize.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

		});
	</script>
</body>
</html>