<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		let fs = document.getElementById('id') // 포커스 변수
		fs.focus();
	};
</script>
</head>
<body>
	<!-- uppermost -->
	<%@ include file="/resources/include/main/uppermost.jsp"%>
	<!-- nav -->
	<%@ include file="/resources/include/main/nav.jsp"%>
	<div class="container">
		<div class="jumbotron">
			<span style="text-align: center;"><h3>회원가입</h3></span>
			<form>
				<p>
					<div class="input-group">
					<span class="input-group-addon" ></span> 
					<input id="id" name="id" type="text" class="form-control" placeholder="아이디">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="pw" name="pw" type="password" class="form-control" placeholder="패스워드">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="name" name="name" type="text" class="form-control" placeholder="이름">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="age" name="age" type="text" class="form-control" placeholder="나이">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="email" name="email" type="email" class="form-control" placeholder="이메일">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="address" name="address" type="text" class="form-control" placeholder="주소">
					<input type="button" class="btn btn-default" value="주소찾기">
					</div>
				</p>
				<input type="submit" class="btn btn-default" value="가입하기" />
			</form>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/resources/include/main/footer.jsp"%>

</body>
</html>