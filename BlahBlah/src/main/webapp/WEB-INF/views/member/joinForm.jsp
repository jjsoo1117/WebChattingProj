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
<style type="text/css">
	p.wrongpw:before{
		content:"비밀번호가 일치하지 않습니다.";
		color:red;
		font-size:13px;
	}
</style>
</head>
<script>
function idCheck(){
	let id = document.getElementById('id').value;
	const IDInfo = JSON.stringify({id:id}); 
	
   	$.ajax({
		url:"http://localhost:8080/prj/member/getIDInfo" ,
		type: "post",
		data:IDInfo,
		dataType: "json",
		contentType:"application/json",
		success: function(data){
			if (data.chkResult) alert("사용 가능한 아이디입니다.");
			else alert("이미 존재하는 아이디 입니다.");
		},
		error: function(errorThrown){
			alert(errorThrown.statusText);
		}
	})
}
function pwCheck(){

	let pw = document.getElementById('pw').value;
	let repw = document.getElementById('repw').value;
/* 	alert(pw+repw); */
	if(pw!=repw){
		 $('#noticepw').addClass('wrongpw');
		 $('#noticepw').addClass('form-control');
	}
	else{ 
		$('#noticepw').removeClass('form-control');
		$('#noticepw').removeClass('wrongpw');
	}
}

</script>
<body>
	<!-- uppermost -->
	<%@ include file="/resources/include/main/uppermost.jsp"%>
	<!-- nav -->
	<%@ include file="/resources/include/main/nav.jsp"%>
	<div class="container">
		<div class="jumbotron">
			<span style="text-align: center;"><h3>회원가입</h3></span>
			<form action="${contextPath }/prj/member/newMember" method="post" >
				<p>
					<div class="input-group">
					<span class="input-group-addon" ></span> 
					<input id="id" name="id" type="text"  class="form-control"  placeholder="아이디">
					<input id="idbtn" name="idbtn" type="button" style="text-align:left"  class="form-control" value="아이디확인" onClick="idCheck()">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="pw" name="pw" type="password" class="form-control" placeholder="패스워드">
					<input id="repw" name="repw" type="password" class="form-control" placeholder="패스워드 재확인" onblur="pwCheck();">
					<p id = "noticepw" ></p>
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="nickname" name="nickname" type="text" class="form-control" placeholder="닉네임">
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
					<input id="phone" name="phone" type="text" class="form-control" placeholder="전화번호">
					</div>
				</p>
				<input type="submit" class="btn btn-default" value="가입하기"  />
			</form>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/resources/include/main/footer.jsp"%>

</body>
</html>