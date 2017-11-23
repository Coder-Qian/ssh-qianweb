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
			<a href=" "> <img src="${pageContext.request.contextPath }/img/logo.jpg"></a>
		</div>
		<div class="info">
			<span>Coder-Qian</span>
		</div>
		<div class="list">
			<ul>
				<li><a href="${pageContext.request.contextPath }/index.jsp">主页</a></li>
				<li><a href="${pageContext.request.contextPath }/me/skill.jsp">技术</a></li>
				<li><a class="active" href="${pageContext.request.contextPath }/me/blog.jsp">博客</a></li>
				<li><a href="${pageContext.request.contextPath }/me/resume.jsp">简历</a></li>
				<li><a href="${pageContext.request.contextPath }/me/life.jsp">生活</a></li>
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
		<div class="page-work-article">
			<div class="on"></div>
			<div class="content">
				<div class="card article">
					<div class="header">
						<h4>大学期间两个项目</h4>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-06-01</span>
						</p>
						<hr />
					</div>
					<div class="content">
						<p>1.VBA石家庄市可乐代理数据分析： 老掉牙的了，还是用VB的东西来处理Excel数据，不过当时感觉很Nice；</p>
						<hr>
						<p>2.图书馆师生网上预订图书（打算让图书馆买进的）模块的开发；大概是在大三时候，第一次接触了strust1,感受很多。</p>
						<hr>
						<p>3.暑期生产实习：主要是培训ERP系统的原理和使用，当时学校还是花大价钱买的用友U8，对信息系统的开发流程有了
						很多的收获；实习后半阶段，使用java做了一个小型学生管理系统，还是用的java ee的原生技术，总体收获还不错，实习成绩也
						顺利的拿下优秀。
					</div>
				</div>
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
