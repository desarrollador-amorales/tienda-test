<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<?php 
    if($_POST){
        $total=0;
        $SID=session_id();
        $correo=$_POST['email'];

        foreach($_SESSION['CARRITO'] as $indice=>$producto){

            $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);
        
        } 
   

    //Creacion de la tabla venta del carrito (cabecera)
    $sentencia= $pdo->prepare("INSERT INTO `tblventas` 
                    (`ID`, `clave_transaccion`, `paypal_datos`, `fecha`, `correo`, `total`, `estado`)
                     VALUES (NULL, :clave_transaccion, '', NOW() , :correo, :total, 'pendiente');");

    $sentencia->bindParam(":clave_transaccion",$SID);
    $sentencia->bindParam(":correo",$correo);
    $sentencia->bindParam(":total",$total);
    $sentencia->execute();

    $idVenta=$pdo->lastInsertId();

    //Creacion de la tabla detalle de venta (detalle)
    foreach($_SESSION['CARRITO'] as $indice=>$producto){

        $sentencia = $pdo->prepare("INSERT INTO 
                        `tblventa_detalle` (`ID`, `id_venta`, `id_producto`, `precio_unitario`, `cantidad`, `descargado`) 
                        VALUES (NULL, :id_venta, :id_producto, :precio_unitario, :cantidad, '0');");

        $sentencia->bindParam(":id_venta",$idVenta);
        $sentencia->bindParam(":id_producto",$producto['ID']);
        $sentencia->bindParam(":precio_unitario",$producto['PRECIO']);
        $sentencia->bindParam(":cantidad",$producto['CANTIDAD']);
        $sentencia->execute();    

    }
}

    ?>

<!-- Include the PayPal JavaScript SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD"></script>

<script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({

            env:'sandbox',  //sandbox | production
            style:{

                label:'checkout',
                size: 'responsive',
                shape:'pill',
                color:'gold'
            },

            // Set up the transaction
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '<?php echo $total?>',  
                        },
                        description:"Compra de productos a Duramas:$<?php echo number_format($total,2);?>",
                        reference_id:"<?php echo $SID;?>#<?php echo openssl_encrypt($idVenta,COD,KEY); ?>"
                    }]
                });
            },

            client:{
                sandbox: 'Ad7viq2dL6bbvnnvA5QT2BG2iRDSEACSml5CVrC8sY0bNYUR5McegWGgISI9LF4YhQw5s3goA4LpLiTI', //pruebas
                production: 'AUPci5olwT2OtnJOkYcQeE42cf-CJJZOiVfRc_83EX-A90VspAD8EEwHJGhlpMroxf7szs1-PkkL4Tx3' //nivel produccion

            },

            // Finalize the transaction
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    // Show a success message to the buyer
                    //alert('Transaccion Completada ' + details.payer.name.given_name + '!');
                    console.log(data);
                    window.location="verificador.php?orderID="+data.orderID; //envio de parametros a la pagina de verificador.php     
                });
            }


        }).render('#paypal-button-container');
    </script>


<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagar con Paypal la cantidad de
    <h4>$<?php echo number_format($total,2) ?></h4>
        <!-- Set up a container element for the button -->
        <div id="paypal-button-container"></div>
    </p>
    <p>Los productos podrán ser descargados una vez que se procese el pago
        <br>
        <strong>(Para aclaraciones: consultas@duramas.com.ec)</strong>
    </p>
</div>


<?php
include 'templates/pie-pagina.php';
?>