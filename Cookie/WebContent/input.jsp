<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<%
/* 	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("id")) {
				response.sendRedirect("result.jsp");
			}
		}
	} */
%>
</head>
<body>
	<form action="login.jsp" method="post">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-primary">
						<div class="panel panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;로그인
							</h3>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<td>ID</td>
									<td><input required="required" type="text" name="id"
										class="form-control"></td>
								</tr>
								<tr>
									<td>PW</td>
									<td><input required="required" type="password" name="pw"
										class="form-control"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="로그인" class="btn btn-primary"> <input
										type="reset" value="초기화" class="btn btn-primary"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>