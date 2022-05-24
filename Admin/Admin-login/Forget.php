<?php
include 'config.php';
error_reporting(0);
if (isset($_POST['submit'])) {
	$email = mysqli_real_escape_string($conn, $_POST['email']);

	$emailquery = "SELECT * FROM users where email='$email'";
	$query = mysqli_query($conn, $emailquery);

	$emailcount = mysqli_num_rows($query);


	if ($emailcount) {

		$userdata = mysqli_fetch_array($query);

		$username = $userdata['username'];
		$token = $userdata['token'];

		$subject = "Password Reset";
		$body = "Hi,$username , We heard You just forgotten your passowrd.No worries we are here to help you out. Click here to Reset your password http://localhost/admin/Admin-login/Reset.php?token=$token";
		$sender_email = "From: sauravpoojari65@gmail.com";

		if (mail($email, $subject, $body, $sender_email)) {
			echo "<script>alert('Please Check your mail to activate your account.Check Spam Folder also. ');</script>";
			//header('location:Login.php');
		} else {
			echo "<script>alert('Email Sending Failed.');</script>";
		}
	} else {
		echo "<script>alert('No Email Found.');</script>";
	}
}

?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="Forget.css">
	<title>Password Reset</title>
</head>

<body>
	<div class="Fcontainer">
		<form action="" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">Password Reset</p>
			<div class="input-group">
				<input type="email" placeholder="Please Enter Your Email" name="email" value="" required>
			</div>
			<div class="input-group">
				<button name="submit" class="btn" name="submit">Submit</button>
			</div>
		</form>
	</div>
</body>

</html>