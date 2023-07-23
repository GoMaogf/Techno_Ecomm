<?php

	include 'includes/session.php';

	if(isset($_POST['reset'])){
		$email = $_POST['email'];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email'=>$email]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			//generate code
			$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code=substr(str_shuffle($set), 0, 15);
			try{
				$stmt = $conn->prepare("UPDATE users SET reset_code=:code WHERE id=:id");
				$stmt->execute(['code'=>$code, 'id'=>$row['id']]);
				
				$message = "
					<p style = 'width:30%;
								margin: 0px auto;
								padding: 20px;
								border: 5px solid #122620;
								color: #f39c12; 
								background: #9d2020;
								border-radius: 10px 10px 10px 10px;
								text-align: center;'> Password Reset.<br>
													  Your Account:<br>
													  Email: ".$email."<br>
													  Please click the link below to reset your password.<br>
													  <a href='http://localhost/ecommerce/password_reset.php?code=".$code."&user=".$row['id']."'>Reset Password</a>
				";



				echo $message; 

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}
		else{
			$_SESSION['error'] = 'Email not found';
		}

		$pdo->close();

	}
	else{
		$_SESSION['error'] = 'Input email associated with account';
	    header('location: password_forgot.php');
 
	  }

	
?>