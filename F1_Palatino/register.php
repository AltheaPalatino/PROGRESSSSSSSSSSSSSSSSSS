<?php  
require_once 'core/models.php'; 
require_once 'core/handleForms.php'; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register Applicant</title>
	<style>
		body {
			font-family: "Arial";
		}
		input, select {
			font-size: 1.2em;
			padding: 10px;
			width: 300px;
			margin: 10px 0;
		}
		table, th, td {
			border:1px solid black;
		}
	</style>
</head>
<body>
	<h1>Register as an Applicant</h1>

	<?php  
	if (isset($_SESSION['message']) && isset($_SESSION['status'])) {
		if ($_SESSION['status'] == "200") {
			echo "<h1 style='color: green;'>{$_SESSION['message']}</h1>";
		} else {
			echo "<h1 style='color: red;'>{$_SESSION['message']}</h1>";	
		}
		unset($_SESSION['message']);
		unset($_SESSION['status']);
	}
	?>
	<form action="core/handleForms.php" method="POST">
		<p>
			<label for="first_name">First Name</label>
			<input type="text" name="first_name" required>
		</p>
		<p>
			<label for="last_name">Last Name</label>
			<input type="text" name="last_name" required>
		</p>
		<p>
			<label for="email">Email</label>
			<input type="email" name="email" required>
		</p>
		<p>
			<label for="gender">Gender</label>
			<select name="gender" required>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Other">Other</option>
			</select>
		</p>
		<p>
			<label for="address">Address</label>
			<input type="text" name="address" required>
		</p>
		<p>
			<label for="job_position">Job Position</label>
			<input type="text" name="job_position" required>
		</p>
		<p>
			<label for="application_status">Application Status</label>
			<input type="text" name="application_status" placeholder="e.g., Pending" required>
		</p>
		<p>
			<input type="submit" name="registerApplicantBtn" value="Register">
		</p>
	</form>
</body>
</html>
