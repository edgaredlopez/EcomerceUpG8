<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<h1 class="page-header">Factura de la venta</h1>
                    <?php 
                        date_default_timezone_set("America/Guatemala");

                        echo date("d-m-Y h:i a");
                    ?>
                    <div style="margin-bottom: 10px;"></div>
	        		<div class="box box-solid">
	        			<div class="box-body">
		        		<table class="table table-bordered">
		        			<thead>
		        				<th></th>
		        				<th>Foto</th>
		        				<th>Nombre artículo</th>
		        				<th>Nombre</th>
		        				<th>Nit</th>
		        				<th>Precio</th>
		        				<th width="20%">Cantidad</th>
		        				<th>Subtotal</th>
		        			</thead>
		        			<tbody id="tbody">
		        			</tbody>
		        		</table>
                        <p>
			   	Si su pago será por transferencia o depósito puede enviar el comprobante por los medios de comunicación previamente mencionados.
			   </p>

			   <p>
				Si su pago fue con tarjeta de crédito o débito por favor enviar una foto en la que se vean los últimos 4 dígitos de su tarjeta junto con el nombre que aparece en la tarjeta y otra foto del DPI del titular de la tarjeta. 
				</p>

				<p>
				De tener algún problema o retraso le estaremos llamando para confirmar la orden.
				</p>

				<p>
				SI SU PEDIDO ES AL DEPARTAMENTO DE GUATEMALA LA ENTREGA SERÁ EN 1 A 3 DÍAS HÁBILES. EN ALGUNOS CASOS SE TOMAN MÁS TIEMPO DEBIDO A RETRASOS DEL MENSAJERO O DEBIDO A QUE ALGÚN PRODUCTO SE ENCUENTRA EN OTRA BODEGA Y TENEMOS QUE ESPERAR UN DÍA HÁBIL PARA TRASLADARLO.
				</p>

				<p>
				SI SU PEDIDO ES AL INTERIOR DE LA REPÚBLICA LA ENTREGA SERÁ EN 2 A 5 DÍAS HÁBILES, EL TIEMPO DE ENTREGA DEPENDE DE LA DISTANCIA Y LA UBICACIÓN DE LA ENTREGA. EN ALGUNOS MUNICIPIOS, CASERÍOS O CANTONES MUY LEJANOS LA ENTREGA PUEDE TOMAR MÁS TIEMPO.
				</p>

				<p>
					Saludos cordiales,
					Tienda Sports S.A. Grupo 8
				</p>  
	        			</div>
	        		</div>
	        		
	        	</div>
	        	
	        </div>
            <a class="button-container-print" 
		style="margin-left: 10px; width: 30px;
   			height: 100px;
    		text-align: center;
    		padding: 15px 5px 15px 5px; 
			border-radius: 10px;
    		font-size: 1.3em;
			background-color: #31b3b7;
			color: #ffffff;
    		cursor: pointer;" 
			id="btnprint">Imprimir factura
	</a>
			
	      </section>
	     
	    </div>
	  </div>
	  
  	
</div>

<?php $pdo->close(); ?>
  	
    </section>   

<?php include './includes/scripts.php'; ?>
<script>
var total = 0;
$(function(){
	$(document).on('click', '.cart_delete', function(e){
		// e.preventDefault();
		// var id = $(this).data('id');
		// $.ajax({
		// 	type: 'POST',
		// 	url: 'cart_delete.php',
		// 	data: {id:id},
		// 	dataType: 'json',
		// 	success: function(response){
		// 		if(!response.error){
		// 			getDetails();
		// 			getCart();
		// 			getTotal();
		// 		}
		// 	}
		// });
	});

	$(document).on('click', '.minus', function(e){
		// e.preventDefault();
		// var id = $(this).data('id');
		// var qty = $('#qty_'+id).val();
		// if(qty>1){
		// 	qty--;
		// }
		// $('#qty_'+id).val(qty);
		// $.ajax({
		// 	type: 'POST',
		// 	url: 'cart_update.php',
		// 	data: {
		// 		id: id,
		// 		qty: qty,
		// 	},
		// 	dataType: 'json',
		// 	success: function(response){
		// 		if(!response.error){
		// 			getDetails();
		// 			getCart();
		// 			getTotal();
		// 		}
		// 	}
		// });
	});

	$(document).on('click', '.add', function(e){
		// e.preventDefault();
		// var id = $(this).data('id');
		// var qty = $('#qty_'+id).val();
		// qty++;
		// $('#qty_'+id).val(qty);
		// $.ajax({
		// 	type: 'POST',
		// 	url: 'cart_update.php',
		// 	data: {
		// 		id: id,
		// 		qty: qty,
		// 	},
		// 	dataType: 'json',
		// 	success: function(response){
		// 		if(!response.error){
		// 			getDetails();
		// 			getCart();
		// 			getTotal();
		// 		}
		// 	}
		// });
	});

	getDetails();
	getTotal();

});

function getDetails(){
	$.ajax({
		type: 'POST',
		url: 'cart_details-invoice.php',
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

<script src=".\build\js\print-pdf.js"></script>
</body>
</html>