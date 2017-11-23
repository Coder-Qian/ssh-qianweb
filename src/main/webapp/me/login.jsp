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
<title>Coder-Qian:login</title>



</head>

<body>

	<div class="wrapper">
    <form class="form-signin" name="form" method="post" action="../qian/login.do">       
      <h2 class="form-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" autofocus="autofocus" value="${username }" />${nameError }
      <input type="password" class="form-control" name="password" placeholder="Password" value="${password }"/>${passwordError }<br/>
      <input class="btn " type="submit" value="登录" style="margin: 30px 20px 30px">
      <button class="btn " type="button" style="margin: 30px 30px 30px" onclick="location.href='regist.jsp'">注册</button>   
    </form>
    <div style=" text-align: center; font-size: 20px; color: red" >
    	<p>${exMsg }</p>
    </div>
  </div>
</body>
</html>
