<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'includes/session.php';

	if(isset($_POST['signup'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$repassword = $_POST['repassword'];
		$statusedgar= "1";

		$_SESSION['firstname'] = $firstname;
		$_SESSION['lastname'] = $lastname;
		$_SESSION['email'] = $email;


			
		$_SESSION['captcha'] = time() + (10*60);
		  	

	
		//Si las contrasenas no coinciden
		if($password != $repassword){
			$_SESSION['error'] = 'Las contraseñas no coinciden';
			header('location: signup.php');
		}
		else{
			//ABRIMOS LA CONEXION :)
			$conn = $pdo->open();

			//VERIRIFCAMOS SI EL EMAIL INGRESADO YA EXISTE EN LA BASE DE DATOS
			$stmt = $conn->prepare("SELECT COUNT(*) AS numrows FROM users WHERE email=:email");
			$stmt->execute(['email'=>$email]);
			$row = $stmt->fetch();
			if($row['numrows'] > 0){
				$_SESSION['error'] = 'Correo electrónico ya tomado';
				header('location: signup.php');
			}
			else{
				//OBTENEMOS FECHA ACTUAL
				$now = date('Y-m-d');
				//ENCRIPTAMOS LA CONTRASENA Y LA GUARDAMOS
				$password = password_hash($password, PASSWORD_DEFAULT);

				//GENERAMOS UN CODIGO DE CREACION DE LA CUENTA
				$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
				$code=substr(str_shuffle($set), 0, 12);

				$tipousuario="1";//Administrador 1, cliente 0;
				try{
					$stmt = $conn->prepare("INSERT INTO users (email, password,type, firstname, lastname,status, activate_code, created_on) VALUES (:email, :password,:tipousuario, :firstname, :lastname,:status, :code, :now)");
					$stmt->execute(['email'=>$email, 'password'=>$password,'tipousuario'=>$tipousuario, 'firstname'=>$firstname, 'lastname'=>$lastname,'status'=>$statusedgar, 'code'=>$code, 'now'=>$now]);
					$userid = $conn->lastInsertId();

					$message = "
						<h2>Gracias por registrarte.</h2>
						<p>Su cuenta:</p>


						<p>Correo electrónico: ".$email."</p>
						<p>Contraseña: ".$_POST['password']."</p>
						<p>Ingrese al apartado de login para iniciar sesion con su cuenta.</p>
						
					";

					//Load phpmailer
		    		require 'vendor/autoload.php';

				       
				        //Content
				        //$mail->isHTML(true);                                  
				        //$mail->Subject = 'ECommerce Site Sign Up';
				       // $mail->Body    = $message;

				        //$mail->send();


				        $_SESSION['success'] = 'Cuenta creada y activada, GRACIAS. Ya puede disfrutar de nuestros servicios.';
				        header('location: signup.php');

				

				}
				catch(PDOException $e){
					$_SESSION['error'] = $e->getMessage();
					header('location: register.php');
				}

				$pdo->close();

			}

		}

	}
	else{
		$_SESSION['error'] = 'Rellene el formulario de registro primero';
		header('location: signup.php');
	}

?>