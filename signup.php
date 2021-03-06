<?php include 'includes/session.php'; ?>

<?php



  if(isset($_SESSION['user'])){
    header('location: cart_view.php');
  }


?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition register-page">
<div class="register-box">
  	<?php
      if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
      }

      if(isset($_SESSION['success'])){
        echo "
          <div class='callout callout-success text-center'>
            <p>".$_SESSION['success']."</p> 
          </div>
        ";
        unset($_SESSION['success']);
      }
    ?>
  	<div class="register-box-body">
    	<p class="login-box-msg">Registrate en SPORTS S.A</p>

      
    	<form action="register.php" method="POST">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="firstname" placeholder="Primer nombre"  required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="lastname" placeholder="Apellido"   required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>



          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="NIT" placeholder="NIT"  required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="direccion" placeholder="Dirección"  required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="tipocliente" placeholder="Tipo de cliente"  required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>

      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="email" placeholder="Correo electrónico"  required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Contraseña" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="repassword" placeholder="Vuelva a escribir la contraseña" required>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
          </div>
          <?php
            if(!isset($_SESSION['captcha'])){
              echo '
                <di class="form-group" style="width:100%;">
                  <div class="g-recaptcha" data-sitekey="6LevO1IUAAAAAFX5PpmtEoCxwae-I8cCQrbhTfM6"></div>
                </di>
              ';
            }
          ?>
          <hr>
      		<div class="row">
    			<div class="col-xs-5">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="signup"><i class="fa fa-pencil"></i> Regístrate</button>
        		</div>
      		</div>
    	</form>
      <br>
      <a href="login.php">¿Ya tienes una cuenta?</a><br>
      <a href="index.php"><i class="fa fa-home"></i> Página de inicio</a>
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>