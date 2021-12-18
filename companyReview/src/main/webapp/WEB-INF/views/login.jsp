<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/login.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body onload="job('${job}')">
	<input type="text"/>
	<input type="button" value="login" onclick="job('login')"/> <input type="button" value="join" onclick="job('join')"/>
	<table id="login">
		<thead>
			<tr>
				<th>로그인</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<input type="text" placeholder="id"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" placeholder="pw"/>
				</td>
			</tr>
		</tbody>
	</table>
	
	
	<table id="join">
		<thead>
			<tr>
				<th>회원가입</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<input name="id" type="text" placeholder="id"/>
				</td>
			</tr>
			<tr>
				<td>
					<input name="pw" type="password" placeholder="pw"/>
				</td>
			</tr>
			<tr>
				<td>
					<input name="repw" type="password" placeholder="repw"/>
				</td>
			</tr>
			<tr>
				<td>
					<input name="email" type="email" placeholder="email"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="가입하기" onclick="join()"/>
				</td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>