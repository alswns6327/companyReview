<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/review.css"/>
<script type="text/javascript" src="js/review.js"></script>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th><input type="text" placeholder="기업명"/></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><textarea rows="30" cols="40" placeholder="제목"></textarea></td>
			</tr>
			<tr>
				<td><textarea rows="30" cols="40" placeholder="내용"></textarea></td>
			</tr>
			<tr>
				<td>
					<div class="score"></div>
					<div class="score"></div>
					<div class="score"></div>
					<div class="score"></div>
					<div class="score" onclick="yellow(this)"></div>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="등록"/>
				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>