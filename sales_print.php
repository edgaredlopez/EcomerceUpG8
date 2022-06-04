<?php
	 
	include 'includes/session.php';

	function generateRow($from, $to, $conn){
		$contents = '';
	 	
		$stmt = $conn->prepare("SELECT *, sales.id AS salesid FROM sales LEFT JOIN users ON users.id=sales.user_id WHERE sales_date BETWEEN '$from' AND '$to' ORDER BY sales_date DESC");
		$stmt->execute();
		$total = 0;

		foreach($stmt as $row){
			$stmt2 = $conn->prepare("SELECT *, cart.id AS cartid FROM cart LEFT JOIN products ON products.id=cart.product_id");
			$stmt2->execute();
			$row2 = $stmt2->fetch();
			

			$stmt = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id WHERE sales_id=:id");
			$stmt->execute(['id'=>$row['salesid']]);
			$product = $stmt->fetch();
			$amount = 0;
			foreach($stmt as $details){
				$subtotal = $details['price']*$details['quantity'];
				$amount += $subtotal;
			}
			$total += $amount;
			$contents .= '
			<tr>
				<td>'.date('M d, Y', strtotime($row['sales_date'])).'</td>
				<td>'.$row['firstname'].' '.$row['lastname'].'</td>
				<td>'.$product['name'].'</td>
				
				<td class="input-group">
							<span class="input-group-btn">
            					<button type="button" id="minus" class="btn btn-default btn-flat minus" data-id="'.$row2['cartid'].'"><i class="fa fa-minus"></i></button>
            				</span>
            				<input type="text" class="form-control" value="'.$row2['quantity'].'" id="qty_'.$row2['cartid'].'">
				            <span class="input-group-btn">
				                <button type="button" id="add" class="btn btn-default btn-flat add" data-id="'.$row2['cartid'].'"><i class="fa fa-plus"></i>
				                </button>
				            </span>
						</td>
						<td>&#36; '.number_format($details["price"], 2).'</td>
						<td>&#36; '.number_format($subtotal, 2).'</td>
						
			</tr>
			';
		}

		$contents .= '
			<tr>
				<td colspan="3" align="right"><b>Total</b></td>
				<td align="right"><b>&#36; '.number_format($total, 2).'</b></td>
			</tr>
		';
		return $contents;
	}

	if(isset($_POST['print'])){
		$ex = explode(' - ', $_POST['date_range']);
		$from = date('Y-m-d', strtotime($ex[0]));
		$to = date('Y-m-d', strtotime($ex[1]));
		$from_title = date('M d, Y', strtotime($ex[0]));
		$to_title = date('M d, Y', strtotime($ex[1]));

		$conn = $pdo->open();

		require_once('./tcpdf/tcpdf.php');  
	    $pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
	    $pdf->SetCreator(PDF_CREATOR);  
	    $pdf->SetTitle('Sales Report: '.$from_title.' - '.$to_title);  
	    $pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
	    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
	    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
	    $pdf->SetDefaultMonospacedFont('helvetica');  
	    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
	    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
	    $pdf->setPrintHeader(false);  
	    $pdf->setPrintFooter(false);  
	    $pdf->SetAutoPageBreak(TRUE, 10);  
	    $pdf->SetFont('helvetica', '', 11);  
	    $pdf->AddPage();  
	    $content = '';  
	    $content .= '
	      	<h2 align="center">TechSoft IT Solutions</h2>
	      	<h4 align="center">Factura de ventas</h4>
	      	<h4 align="center">'.$from_title." - ".$to_title.'</h4>
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
					La Electronica
				</p>  
	      	<table border="1" cellspacing="0" cellpadding="3">  
	           <tr>  
	           		<th width="10%" align="center"><b>Fecha</b></th>
					   <th width="30%" align="center"><b>Nombre</b></th>
	           		<th width="15%" align="center"><b>Producto</b></th>
					<th width="15%" align="center"><b>Cantidad</b></th>  
					<th width="15%" align="center"><b>Precio</b></th>
					<th width="15%" align="center"><b>Subtotal</b></th>
					
	           </tr> 
				
				';  
	    $content .= generateRow($from, $to, $conn);  
	    $content .= '</table>';  
	    $pdf->writeHTML($content);  
	    $pdf->Output('invoice.pdf', 'I');

	    $pdo->close();
	}
	else{
		$_SESSION['error'] = 'Necesita rango de fechas para proporcionar impresión de ventas';
		header('location: profile.php');
	}

	
?>


<?php
/*
	include 'includes/session.php';

	function generateRow($from, $to, $conn){
		$contents = '';
	 	
		$stmt = $conn->prepare("SELECT *, sales.id AS salesid FROM sales LEFT JOIN users ON users.id=sales.user_id WHERE sales_date BETWEEN '$from' AND '$to' ORDER BY sales_date DESC");
		$stmt->execute();
		$total = 0;
		foreach($stmt as $row){
			$stmt = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id WHERE sales_id=:id");
			$stmt->execute(['id'=>$row['salesid']]);
			$amount = 0;
			foreach($stmt as $details){
				$subtotal = $details['price']*$details['quantity'];
				$amount += $subtotal;
			}
			$total += $amount;
			$contents .= '
			<tr>
				<td>'.date('M d, Y', strtotime($row['sales_date'])).'</td>
				<td>'.$row['firstname'].' '.$row['lastname'].'</td>
				<td>'.$row['pay_id'].'</td>
				<td align="right">&#36; '.number_format($amount, 2).'</td>
			</tr>
			';
		}

		$contents .= '
			<tr>
				<td colspan="3" align="right"><b>Total</b></td>
				<td align="right"><b>&#36; '.number_format($total, 2).'</b></td>
			</tr>
		';
		return $contents;
	}

	if(isset($_POST['print'])){
		$ex = explode(' - ', $_POST['date_range']);
		$from = date('Y-m-d', strtotime($ex[0]));
		$to = date('Y-m-d', strtotime($ex[1]));
		$from_title = date('M d, Y', strtotime($ex[0]));
		$to_title = date('M d, Y', strtotime($ex[1]));

		$conn = $pdo->open();

		require_once('../tcpdf/tcpdf.php');  
	    $pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
	    $pdf->SetCreator(PDF_CREATOR);  
	    $pdf->SetTitle('Sales Report: '.$from_title.' - '.$to_title);  
	    $pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
	    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
	    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
	    $pdf->SetDefaultMonospacedFont('helvetica');  
	    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
	    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
	    $pdf->setPrintHeader(false);  
	    $pdf->setPrintFooter(false);  
	    $pdf->SetAutoPageBreak(TRUE, 10);  
	    $pdf->SetFont('helvetica', '', 11);  
	    $pdf->AddPage();  
	    $content = '';  
	    $content .= '
	      	<h2 align="center">TechSoft IT Solutions</h2>
	      	<h4 align="center">REPORTE DE VENTAS</h4>
	      	<h4 align="center">'.$from_title." - ".$to_title.'</h4>
	      	<table border="1" cellspacing="0" cellpadding="3">  
	           <tr>  
	           		<th width="15%" align="center"><b>Fecha</b></th>
	                <th width="30%" align="center"><b>Nombre del comprador</b></th>
					<th width="40%" align="center"><b>Transacción#</b></th>
					<th width="15%" align="center"><b>Cantidad</b></th>  
	           </tr>  
	      ';  
	    $content .= generateRow($from, $to, $conn);  
	    $content .= '</table>';  
	    $pdf->writeHTML($content);  
	    $pdf->Output('invoice.pdf', 'I');

	    $pdo->close();

	}
	else{
		$_SESSION['error'] = 'Necesita rango de fechas para proporcionar impresión de ventas';
		header('location: sales.php');
	}

	*/
?>