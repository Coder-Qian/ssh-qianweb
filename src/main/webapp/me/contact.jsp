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
		<div class="page-contact">
			<div class="on"></div>
			<div class="header">
				<div class="image">
					<img src="${pageContext.request.contextPath }/img/contact.png">
				</div>
				<div class="line">
					<hr />
				</div>
			</div>
			<div class="welcome"></div>
			<div class="content">
				<div class="row">
					<div class="col s12 m4">
						<div class="left-msg">
							<div class="card">
								<div class="title">
									<h4>Information</h4>
								</div>
								<div class="contact-info">
									<p>Tel：15033576219</p>
									<p>Email：qianzhiyong0926@126.com</p>
								</div>
								<div class="qrcode">
									<img src="${pageContext.request.contextPath }/img/weixin.jpg">
								</div>
								<div class="tips">
									<p>Scan QR Code In Wechat</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col s12 m8">
						<div class="right-msg">
							<div class="card">
								<div class="title">
									<h4>Leave Words</h4>
								</div>
								<form id="msgForm" action="../qian/msg.do" method="post">
								<div class="input">
									<div class="row">
										<div class="input-field col s12">
											<i class="material-icons prefix">account_circle</i> <input name="name" id="name" type="text" value="${name }" placeholder="You Name"> ${nameError }
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<i class="material-icons prefix">phone</i> <input name="phone" id="phone" type="tel" value="${phone }" placeholder="Phone Number"> <span> &nbsp; ${phoneError}</span>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<i class="material-icons prefix">mode_edit</i>
											<textarea form="msgForm" name="msg" id="msg" class="materialize-textarea" length="120" placeholder="Write Message Here">${msg }</textarea>
											
										</div>
									</div>
								</div>
								<div class="send">
									<input class="btn waves-effect waves-light" type="submit" >
										<i class="material-icons right"></i>
									</input>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="height"></div>
			<div class="footer">
				<p>© Coder-Qian</p>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/js/materialize.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#send-btn').on('click', function() {
				var msgName = $("input#name").val();
				var msgPhone = $("input#phone").val();
				var msgContent = $("textarea#msg").val();
				if (msgName == '') {
					alert('姓名不能为空');
					return false;
				}
				if (msgPhone == '') {
					alert('号码不能为空');
					return false;
				}
				if (msgContent == '') {
					alert('内容不能为空');
					return false;
				}
				var dataobj = {
					'msgName' : msgName,
					'msgPhone' : msgPhone,
					'msgContent' : msgContent
				};
				$.ajax({
					url : '/messageAction!msgSub.action',
					type : 'post',
					dataType : 'json',
					data : dataobj,
					success : function(data) {
						if (data) {
							alert('提交成功！');
							window.location.reload();
						} else {
							alert('提交失败，请重新提交！');
						}
					},
					error : function() {
						alert('提交失败，请重新提交！');
					}
				});
			});
		});
	</script>
</body>
</html>
	