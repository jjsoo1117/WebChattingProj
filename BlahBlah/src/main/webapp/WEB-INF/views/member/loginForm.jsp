<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
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
			<form action="#">
				<div class="form-group">
					<label for="id"></label> <input type="text" class="form-control"
						id="id" name="id" placeholder="아이디">
				</div>
				<div class="form-group">
					<label for="pw"></label> <input type="password"
						class="form-control" id="pw" name="pw" placeholder="비밀번호">
				</div>
				<div class="checkbox">
					<label><input type="checkbox"> 아이디 저장 </label>
				</div>
				<button type="submit" class="btn btn-default">로그인</button>
				<input type="button" class="btn btn-default" onClick="location.href='/prj/member/joinForm'" value="회원가입">
				<input type="button" class="btn btn-default" value="아이디 찾기">
				<input type="button" class="btn btn-default" value="비밀번호 찾기">
			</form>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="/resources/include/main/footer.jsp"%>

</body>
</html>