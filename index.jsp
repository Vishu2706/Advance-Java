<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkFname() {
		var f = document.frm.Fname.value;
		var reg = /^[A-Za-z_]+$/;
		if (f == "") {
			//alert("Please enter first Name");
			document.getElementById("Fname").innerHTML = "Please Enter your First Name";
		} else if (!reg.test(f)) {
			document.getElementById("Fname").innerHTML = "Please Enter only alphabetic characters ";
		} else {
			//alert("Please enter first Name");
			document.getElementById("Fname").innerHTML = "";
		}
	}
	function checkEmail() {
		var mail = document.frm.mail.value;
		var reg = /^[A-Za-z0-9-_.]+@[A-Za-z]+\.[A-Za-z]{2,4}$/;
		if (mail == "") {
			document.getElementById("mail").innerHTML = "Please Enter your Email";
		} else if (!reg.test(mail)) {
			document.getElementById("mail").innerHTML = "Please Enter No special character allowed ";
		} else {
			document.getElementById("mail").innerHTML = "";
		}
	}
	function checkPhone() {
		var mobile = document.frm.Mobile.value;
		var reg = /^\d{10}$/;
		if (mobile == "") {
			document.getElementById("phone").innerHTML = "Please Enter your Phone No";
		} else if (!reg.test(mobile)) {
			document.getElementById("phone").innerHTML = "Only 10 digits allowed";
		} else {
			document.getElementById("phone").innerHTML = "";
		}
	}
	function checkPassword() {
		var pass = document.frm.Protect.value;
		var reg = /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^A-Za-z0-9])(?!.*\s).{8,15}$/;
		if (pass == "") {
			document.getElementById("confirm").innerHTML = "Please Enter your Password";
		}
		else if (!reg.test(pass)) {
			document.getElementById("confirm").innerHTML = "In your password at least one uppercase, one lowercase, one special character and numbers are allowed not space allowed";
		} else {
			document.getElementById("confirm").innerHTML = "";
		}
	}
	function checkCPassword() {
		var pass = document.frm.Protect.value;
		var pass2 = document.frm.OTP.value;
		if (pass2 == "") {
			document.getElementById("OTP").innerHTML = "Please Enter your Password";
		}else if(pass!=pass2){
			document.getElementById("OTP").innerHTML = "Please Enter same password";
		} else {
			document.getElementById("OTP").innerHTML = "";
		}
	}
</script>
</head>
<body>
	<h1>Hello World</h1>
	<form method="post" name="frm">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="Fname" onblur="checkFname();" /></td>
				<td><span id="Fname"></span></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="Lname" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="mail" onblur="checkEmail();"/></td>
				<td id="mail"></td>
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" name="Mobile" onblur="checkPhone();"/></td>
				<td id="phone"></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><textarea rows="5" cols="25" name="home"></textarea></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="Female" /> Female
					<input type="radio" name="gender" value="Male" /> Male</td>
			</tr>
			<tr>
				<td>Hobby:</td>
				<td><input type="checkbox" name="habit" value="reading" />Reading
					<br> <input type="checkbox" name="habit" value="music" />Listening
					music <br> <input type="checkbox" name="habit" value="travel" />travelling
					<br> <input type="checkbox" name="habit" value="cricket" />Cricket
					<br></td>
			</tr>
			<tr>
				<td>Education:</td>
				<td><select name="Education" required>
						<option value="select frpm Option">Select from Option
						<option value="10">10th</option>
						<option value="12">12th</option>
						<option value="BE">BE</option>
						<option value="ME">ME</option>
						<option value="BCA">BCA</option>
						<option value="MCA">MCA</option>
						<option value="Mtech">M.Tech</option>
				</select></td>
			</tr>
			<tr>
				<td>Birth Date:</td>
				<td><input type="date" name="BirthDate" /></td>
			</tr>
			<tr>
				<td>Birth Time:</td>
				<td><input type="time" name="birthTime" /></td>
			</tr>
			<tr>
				<td>Resume:</td>
				<td><input type="file" name="CV" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="Protect" onblur="checkPassword();" /></td>
				<td><span id="confirm"></span></td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td><input type="password" name="OTP" onblur="checkCPassword();" /></td>
				<td><span id="OTP"></span></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="Done"
					action="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>