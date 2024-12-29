<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style type="text/css">
tr, td {
	padding: 10px;
}
</style>
</head>
<body>
	<form name="insert" method="post" action="UserController">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname" /></td>
				<td><span id="Fname"></span></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lname" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><textarea rows="5" cols="23" name="home"></textarea></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="Female" /> Female
					<input type="radio" name="gender" value="Male" /> Male</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="upload" value="finish" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
</body>
</html>