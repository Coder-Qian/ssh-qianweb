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
				<li><a class="active" href="${pageContext.request.contextPath }/me/blog.jsp"><img src="${pageContext.request.contextPath }/img/unlock.png" />&nbsp博客&nbsp&nbsp&nbsp</a></li>
				<li><a href="${pageContext.request.contextPath }/me/resume.jsp"><img src="${pageContext.request.contextPath }/img/lock.png"/>&nbsp简历&nbsp&nbsp&nbsp</a></li>
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
		<div class="page-work">
			<div class="on"></div>
			<div class="list">
				<div class="chr">
					<div class="header">
						<div class="border">
							<h5>Bef 12/01/2015</h5>
						</div>
						<div style="text-align: center;">
							<p>新浪博客:<strong>青涩的求知者</strong>主要关于：Java, Spass, ERP, IS方面的东西，起步较晚，东西不够丰富</p>						
						</div>
						
					</div>
					<div class="content">
						<div class="card con small" style="background-image: url('${pageContext.request.contextPath }/img/xinlang.jpg');">
							<a href="${pageContext.request.contextPath }/me/work_article.jsp"></a>
						</div>
					</div>
				</div>
				<div class="chr">
					<div class="header">
						<div class="border">
							<h5>12/01/2015</h5>
						</div>
						<div style="text-align: center;">
							<p>CSDN博客:<strong>Coder-Qian</strong>主要关于：Java, SSH, Linux, Maven, 管理...</p>						
						</div>
					</div>
					<div class="content">
						<div class="card con small" style="background-image: url('${pageContext.request.contextPath }/img/work2.jpg');">
							<a href="${pageContext.request.contextPath }/me/tech_article.jsp"></a>
						</div>
					</div>
				</div>
				<div class="chr">
					<div class="header">
						<div class="border">
							<h5>03/01/2017</h5>
						</div>
						<div style="text-align: center;">
							<p>JavaWorld; SourcePage <strong> GitHub; 知乎；Linux公社</strong>...</p>						
						</div>
					</div>
					<div class="content">
						<div class="card con small" style="background-image: url('${pageContext.request.contextPath }/img/work3.jpg');">
							<a href="${pageContext.request.contextPath }/me/work_article.jsp"></a>
						</div>
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
