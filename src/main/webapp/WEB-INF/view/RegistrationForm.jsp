<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="script.js"></script>
</head>
<body >
	<div
		style="border: solid ; border-width: 5px; margin: 0 auto; height:auto; width: 50%; padding: 20px;margin-top: 5vh ;background-color: #3FB59E;color: white;">
		
		<h2 style="text-align: center;color: white: ;border: solid 3px;border-color: white;">Misha Infotech Pvt. Ltd. <br>User Registration Form</h2>
		<form id="registration-form" method="post"
			action="/registrationForm/registerUser" enctype="multipart/form-data" style="font-size: 18px ;font-family: Monospace,Lucida Console;">
			<br>
			<table>
				<tr>
					<td><label for="name">Name*</label></td>
					<td>:</td>
					<td><input type="text" id="name" name="name" maxlength="25" style="border-radius: 2px;border-color: transparent;"
						required></td>
				</tr>
				<tr>
					<td><label>Gender*</label></td>
					<td>:</td>
					<td><input type="radio" id="male" name="gender" value="Male"
						required> <label for="male">Male</label> <input
						type="radio" id="female" name="gender" value="Female" required>
						<label for="female">Female</label></td>
				</tr>
				<tr>
					<td><label for="dob">Date of Birth*</label></td>
					<td>:</td>
					<td><input type="text" id="dob" name="dob" style="border-radius: 2px;border-color: transparent;"
						pattern="\d{2}/\d{2}/\d{4}" placeholder="dd/mm/yyyy" required></td>
				</tr>
				<tr>
					<td><label for="email">Email Address</label></td>
					<td>:</td>
					<td><input type="email" id="email" name="email" style="border-radius: 2px;border-color: transparent;"></td>
				</tr>
				<tr>
					<td><label for="contact">Contact No.*</label></td>
					<td>:</td>
					<td><input type="tel" id="contact" name="contact"
						maxlength="10" style="border-radius: 2px;border-color: transparent;" required></td>
				</tr>
				<tr>
					<td><label for="state">State*</label></td>
					<td>:</td>
					<td><select id="state" name="state" required>
							<option value="">--Select State--</option>
							<option value="Delhi">Delhi</option>
							<option value="UP">UP</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="city">City</label></td>
					<td>:</td>
					<td><select id="city" name="city" style="border-radius: 2px;border-color: transparent;">
							<option value="">--Select City--</option>
							<option value="Delhi">Delhi / New Delhi</option>
							<option value="Noida">Noida</option>
							<option value="Lucknow">Lucknow</option>
					</select></td>
				</tr>
				<tr>
					<td><label>Hobbies</label></td>
					<td>:</td>
					<td><input type="checkbox" id="hobby1" name="hobbies"
						value="Chess"> <label for="hobby1">Chess</label> <input
						type="checkbox" id="hobby2" name="hobbies" value="Cricket">
						<label for="hobby2">Cricket</label> <input type="checkbox"
						id="hobby3" name="hobbies" value="Football"> <label
						for="hobby3">Football</label> <input type="checkbox" id="hobby4"
						name="hobbies" value="Hockey"> <label for="hobby4">Hockey</
					</td>
				</tr>
				<tr>
					<td><label for="photo">Photo</label></td>
					<td>:</td>
					<td><input type="file" id="photo" name="photo"
						accept=".jpg,.png"></td>
				</tr>
				<tr >
					<td colspan="2" ><input type="checkbox" id="agree" name="agree" style="margin-top: 15px"
						required> <label for="agree" style="margin-top: 15px">I agree Terms and
							Conditions</label></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" style="font-size: 18px ;font-family: Monospace,Lucida Console;background-color: transparent; padding: 3px;margin-top: 5vh;" value="Register"></td>
				</tr>
			</table>
		</form>
		  <p class="mb-0"><a href="viewUser" style="border:solid 2px;border-color:black;text-decoration:black;color:black; padding: 3px;margin-top: 10px;font-size: 18px ;font-family: Monospace,Lucida Console; " >View User List</a></p>
	</div>
</body>
</html>
