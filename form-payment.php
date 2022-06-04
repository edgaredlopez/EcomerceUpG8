<?php include 'includes/header.php'; ?>

<section class="main-section-payments">
    
    <h2 class="title-section-payment">Métodos de pago</h2>
    <section class="section-payments-container">

    <section class="left-dates">
        <h2 class="title-left-dates">Paso 1: Tus datos de factura</h2>
        <h3 class="subtitle-left-dates">Datos para envío contraentrega </h3>

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

    </section>

    <section class="credit-or-debit-container">

        <h2 class="title-credit-or-debit-container">Paso 2: Tu compra</h2>


        <div class="img-credit-debit-container">
            <img class="img-credit-debit" src=".\images\tarjeta-credito.jpg" alt="credit o debit">
        </div>

        <form action="" method="POST">
            <div>

                <div class="form-group has-feedback">
                <label for="credit-number">Número de la tarjeta:</label>
                <input type="tel" class="form-control" name="credit-number" id="credit-number" placeholder="Número de la tarjeta" required>
            
            </div>

            <div>

                <div class="form-group has-feedback">
                <label for="credit-name">Nombre de la tarjeta:</label>
                <input type="text" class="form-control" name="credit-name" id="credit-name" placeholder="Nombre de la tarjeta" required>
            
            </div>

            <div>

                <div class="form-group has-feedback">
                <label for="credit-exp">Fecha expira:</label>
                <input type="text" class="form-control" name="credit-exp" id="credit-exp" placeholder="Fecha expira" required>
            
            </div>

            <div>

                <div class="form-group has-feedback">
                <label for="credit-code">Código CVV/CVC:</label>
                <input type="text" class="form-control" name="credit-code" id="credit-code" placeholder="Código CVV/CVC" required>
            
            </div>

            <div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"> Comprar</button>
        	</div>
        </form>
    </section>
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

    </section>    
    
</section>
<?php include 'includes/footer.php'; ?>
