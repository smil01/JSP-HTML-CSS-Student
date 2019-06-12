<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<style type="text/css">
td {
	text-align: center;
}
</style>
</head>
<body>
	<form action="JoinService" method="post">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-primary">
						<div class="panel panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;회원가입
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
									<td>NAME</td>
									<td><input required="required" type="text" name="name"
										class="form-control"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="회원가입"
										class="btn btn-primary"> <input type="reset"
										value="다시입력" class="btn btn-primary"></td>
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


