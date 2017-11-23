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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/materialize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.scss" />
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/ico/itronys.ico" media="screen" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>Coder-Qian:skill</title>



</head>

<body>

	<div class="wrapper">
    <form class="form-signin" name="form" method="post" action="../qian/regist.do">       
      <h2 class="form-heading">Create A New Account</h2>
      <input type="text" class="form-control" name="username" placeholder="6-12字母和数字" autofocus="autofocus" value="${username }" />${nameError }
      <input type="password" class="form-control" name="password" placeholder="6位数字" value="${password }"/>${passwordError }<br/>
      <input type="email" class="form-control" name="email" placeholder="qian@123.com" value="${email }"/>${emailError }<br/>
      <input class="btn " type="submit" value="注册" style="margin: 30px 20px 30px">
      <button class="btn " type="button" style="margin: 30px 30px 30px" onclick="location.href='../index.jsp'">返回</button>   
    </form>
  </div>
</body>
</html>
