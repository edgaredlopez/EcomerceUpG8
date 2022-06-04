<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<h1 class="page-header">Su carro</h1>
	        		<div class="box box-solid">
	        			<div class="box-body">
		        		<table class="table table-bordered">
		        			<thead>
		        				<th></th>
		        				<th>Foto</th>
		        				<th>Nombre</th>
		        				<th>Precio</th>
		        				<th width="20%">Cantidad</th>
		        				<th>Subtotal</th>
		        			</thead>
		        			<tbody id="tbody">
		        			</tbody>
		        		</table>
	        			</div>
	        		</div>
	        		
	        	</div>
	        	<div class="col-sm-3">
	        		<?php 
					include 'includes/sidebar.php';
					 ?>
	        	</div>
	        </div>
			
	      </section>
	     
	    </div>
	  </div>
	  
  	
</div>

<section class="main-section-payments">
    
    <h2 class="title-section-payment">Métodos de pago</h2>
    <section class="section-payments-container">

    <section class="left-dates">
        <h2 class="title-left-dates">Paso 1: Tus datos de factura</h2>
        <h3 class="subtitle-left-dates">Datos para envío contraentrega y comprar como invitado </h3>

        <form action="" method="POST">
            
            <div class="form-group has-feedback">

                <label for="name">Nombre completo:</label>
        		<input type="text" class="form-control" name="name" id="name" placeholder="Nombre completo" required>
            
      		</div>

            <div>

                <div class="form-group has-feedback">
                <label for="tel">Teléfono:</label>
        		<input type="tel" class="form-control" name="tel" id="tel" placeholder="Teléfono" required>
        	
      		</div>

            <div>

                <div class="form-group has-feedback">
                <label for="email">Email:</label>
        		<input type="email" class="form-control" name="email" id="email" placeholder="Email" required>

      		</div>

            <div>

                <div class="form-group has-feedback">
                <label for="address">Dirección:</label>
        		<input type="text" class="form-control" name="address" id="address" placeholder="Dirección completa" required>
    
      		</div>


            <div>

                <div class="form-group has-feedback">
                <label for="invoice-name">Nombre para la factura:</label>
        		<input type="text" class="form-control" name="invoice-name" id="invoice-name" placeholder="Nombre para la factura" required>
        	
      		</div>

            <div>

                <div class="form-group has-feedback">
                <label for="nit">Nit:</label>
        		<input type="text" class="form-control" name="nit" id="nit" placeholder="Nombre para la factura" required>
        	
      		</div>

              <input type="checkbox" name="send-dates" id="send-dates" checked="checked" >
              <label for="dates-send">Quiero utilizar estos datos para el envío también</label>

			</form>
			<form action="info-compra.php" method="GET">
			<button type='submit' class='btn btn-primary btn-block btn-flat btn-padding' name='login'>Comprar</button>
			</form>

    </section>

		<?php
					
					if(isset($_SESSION['user'])){
						echo "
						<section class='credit-or-debit-container'>

						<h2 class='title-credit-or-debit-container'>Paso 2: Tu compra</h2>


						<div class='img-credit-debit-container'>
							<img class='img-credit-debit' src='./images/tarjeta-credito.jpg' alt='credit o debit'>
						</div>

						<form action='sales.php' method='GET'>
							<div>

								<div class='form-group has-feedback'>
								<label for='credit-number'>Número de la tarjeta:</label>
								<input type='tel' class='form-control' name='credit-number' id='credit-number' placeholder='Número de la tarjeta' required>
							
							</div>

							<div>

								<div class='form-group has-feedback'>
								<label for='credit-name'>Nombre de la tarjeta:</label>
								<input type='text' class='form-control' name='credit-name' id='credit-name' placeholder='Nombre de la tarjeta' required>
							
							</div>

							<div>

								<div class='form-group has-feedback'>
								<label for='credit-exp'>Fecha expira:</label>
								<input type='text' class='form-control' name='credit-exp' id='credit-exp' placeholder='Fecha expira' required>
							
							</div>

							<div>

								<div class='form-group has-feedback'>
								<label for='credit-code'>Código CVV/CVC:</label>
								<input type='text' class='form-control' name='credit-code' id='credit-code' placeholder='Código CVV/CVC' required>
							
							</div>
							
							
						</form>
						<form action='sales.php' method='GET'
							<div class='col-xs-4'>
									<button type='submit' class='btn btn-primary btn-block btn-flat btn-padding' name='login'>Comprar</button>
							</div>
							</form>
							<div class='relleno'>.</div>
						<button id='paypal-button'></button>
						</section>
							";
	        			}
	        			else{
	        				echo "
	        					<h4>Necesitas <a href='login.php'>Iniciar sesión</a> para revisar.</h4>
	        				";
	        			}
	    ?>

    
    </section>
    
    <section class="transfer-or-deposit">
        <h3 class="title-transfer-or-deposit">Detalles de pago por transferencia o deposito bancario ¡Envíar boleta!</h3>


        <h2>Instrucciones para Transferencia o deposito bancario</h2>
        <p><b>Por favor siga las siguientes instrucciones para Transferencia o deposito bancario</b></p>
        <div class="well well-sm">
        <p>Instrucciones:<br>
        <br>
        Puede depositar a cualquiera de estas cuentas:<br>
        <br>
        Cuenta monetaria 3218024147 de Banrural a nombre de El Grupo 8 Sport, S.A.<br>
        <br>
        Cuenta monetaria 051-0026697-1 de G&amp;T a nombre de El Grupo 8 Sport, S.A.<br>
        <br>
        Cuenta monetaria 074-014703-8 de Banco Industrial a nombre de El Grupo 8 Sport, S.A.<br>
        <br>
        POR FAVOR ENVIAR LA BOLETA O COMPROBANTE POR MESSENGER A NUESTRA PÁGINA DE FACEBOOK O POR WHATSAPP<br>
        <br>
        https://m.me/sportssagt<br>
        https://wa.me/50245789568<br>
        </p>
        <p>Su Orden NO será Enviada hasta que su PAGO SEA ACREDITADO</p>
        </div>

		<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
    </section>   

<?php include 'includes/scripts.php'; ?>
<script>
var total = 0;
$(function(){
	$(document).on('click', '.cart_delete', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		$.ajax({
			type: 'POST',
			url: 'cart_delete.php',
			data: {id:id},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.minus', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		if(qty>1){
			qty--;
		}
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.add', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		qty++;
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	getDetails();
	getTotal();

});

function getDetails(){
	$.ajax({
		type: 'POST',
		url: 'cart_details.php',
		dataType: 'json',
		success: function(response){
			$('#tbody').html(response);
			getCart();
		}
	});
}

function getTotal(){
	$.ajax({
		type: 'POST',
		url: 'cart_total.php',
		dataType: 'json',
		success:function(response){
			total = response;
		}
	});
}
</script>
<!-- Paypal Express -->
<script>
paypal.Button.render({
    env: 'sandbox', // change for production if app is live,

	client: {
        sandbox:    'ASb1ZbVxG5ZFzCWLdYLi_d1-k5rmSjvBZhxP2etCxBKXaJHxPba13JJD_D3dTNriRbAv3Kp_72cgDvaZ',
        // production: 'AaBHKJFEej4V6yaArjzSx9cuf-UYesQYKqynQVCdBlKuZKawDDzFyuQdidPOBSGEhWaNQnnvfzuFB9SM'
    },

    commit: true, // Show a 'Pay Now' button

    style: {
    	color: 'gold',
    	size: 'small'
    },

    payment: function(data, actions) {
        return actions.payment.create({
            payment: {
                transactions: [
                    {
                    	//total purchase
                        amount: { 
                        	total: total, 
                        	currency: 'USD' 
                        }
                    }
                ]
            }
        });
    },

    onAuthorize: function(data, actions) {
        return actions.payment.execute().then(function(payment) {
			window.location = 'sales.php?pay='+payment.id;
        });
    },

}, '#paypal-button');
</script>
</body>
</html>