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
		<div class="page-tech-article">
			<div class="on"></div>
			<div class="content">
				<div class="card article">
					<div class="header">
						<h4>研究生阶段计算机方面的进展</h4>
						<p class="time">
							<i class="material-icons">access_time</i><span>2015-12-18</span>
						</p>
						<hr />
					</div>
					<div class="content">
						<p>1.关于数据中心方面的项目，这个项目是由北京中国银行的师兄引起的，主要是考虑数据中心节能和资源调度的研究</p>
						<hr>
						<p>2.关于共享交通方面：当下比较火的共享自行车和共享电动车方面的项目，主要研究的是共享交通的性能评价和再平衡
						问题，仿真与计算方面主要使用的Java多线程方面的，数据处理方面用的是Matlab；</p>
						<hr>
						<p>3.16年暑假时候，有一个月的空闲时间，参加了一个JAVA方面的远程培训，增加一下知识，主要是关于SSH方面的；</p>
						<hr>
						<p>4.自学了Spring mvc框架，用起来的确比sturt2舒服点，学习了Linux的一些东西，能够搭建Java Web环境，学习了shell编程；</p>
						<hr>
						<p>5.对maven和git的相关内容进行了学习升级；</p>
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
