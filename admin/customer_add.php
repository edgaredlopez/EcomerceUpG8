<?php
	include 'includes/session.php';

	if(isset($_POST['add']))
	{
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$NIT = $_POST['NIT'];
		$direccion= $_POST['direccion'];
		$tipocliente= $_POST['tipocliente'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$tipousuario= 0;
		$statusedgar= "1";


		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email'=>$email]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			$_SESSION['error'] = 'Correo electrónico ya registrado anteriormente';
		}
		else{
			$password = password_hash($password, PASSWORD_DEFAULT);
			$filename = $_FILES['photo']['name'];
			$now = date('Y-m-d');
			if(!empty($filename)){
				move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
			}
			try{
				$stmt = $conn->prepare("INSERT INTO users (firstname, lastname, nit, address, tipocliente, email, password, type, status,  photo,  created_on)
				VALUES (:firstname,:lastname, :nit, :address,:tipocliente,:email, :password,  :tipousuario, :status,  :photo,  :created_on)");
				$stmt->execute(['firstname'=>$firstname, 'lastname'=>$lastname, 'nit'=>$NIT, 'address'=>$direccion, 'tipocliente'=>$tipocliente, 'email'=>$email, 'password'=>$password,'tipousuario'=>$tipousuario, 'status'=>$statusedgar, 'photo'=>$filename, 'created_on'=>$now]);
	
				$_SESSION['success'] = 'Cliente registrado exitosamente';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Rellene el formulario de cliente primero';
	}

	header('location: Customers.php');

?>