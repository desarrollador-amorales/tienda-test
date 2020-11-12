<?php 
    
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';

?>
<br>
<br>
<br>

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
                        VALUES (NULL, :idVenta, :idProducto, :precioUnitario, :cantidad, '0');");

        $sentencia->bindParam(":idVenta",$idVenta);
        $sentencia->bindParam(":idProducto",$producto['ID']);
        $sentencia->bindParam(":precioUnitario",$producto['PRECIO']);
        $sentencia->bindParam(":cantidad",$producto['CANTIDAD']);
        $sentencia->execute();    

    }
}


?>

<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<style>

    /* Media query for mobile viewport */
    @media screen and (max-width: 400px){
        #paypal-button-container{
            width: 100%;
        }
    }

    /* Media query for desktop viewport */
    @media screen and (min-width: 400px){
        #paypal-button-container{
            width: 250px;
            display: inline-block;
        }
    }
</style>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagar con paypal la cantidad de:
        <h4>$<?php echo number_format($total,2); ?></h4>
        <div id="paypal-button-container"></div>
        
    </div>
    </p>
        <p class="text-center">Los productos podran ser descargados una vez que se procese el pago
         <br>
            <strong>(Para aclaraciones  :consultas@duramas.com.ec)</strong>
        </p>
</div>
 
<script>
    paypal.Button.render({
        env: 'sandbox',// sandbox | production 
        style:{
            label: 'checkout',// checkout | credit | pay | nuynow | generic
            size:  'responsive',// small | medium | large | responsive
            shape: 'pill',//pill | rect
            color: 'gold'// gold | blue | silver | black
        },
        client:{
            sandbox: 'Ad7viq2dL6bbvnnvA5QT2BG2iRDSEACSml5CVrC8sY0bNYUR5McegWGgISI9LF4YhQw5s3goA4LpLiTI',
            production: 'AUPci5olwT2OtnJOkYcQeE42cf-CJJZOiVfRc_83EX-A90VspAD8EEwHJGhlpMroxf7szs1-PkkL4Tx3'
        },
        payment: function(data, actions){
            return actions.payment.create({
                payment:{
                    transactions:[{
                        amount: {total: '<?php echo $total; ?>', currency:'USD'},
                        description:"Compra de productos a Duramas:$<?php echo number_format($total,2); ?>",
                        custom:"<?php echo $SID; ?>#<?php echo openssl_encrypt($idVenta,COD,KEY);?>" //Se envia por medio del boton de pagos (PayPal) el SID y el id de la venta encriptado para que despues que se haya realizador la venta poder actualizar en nuestra BD Tienda.
                    }]
                }
            })
        },
        onAuthorize: function(data, actions){
            return actions.payment.execute().then(function(){
                console.log(data);
                window.location="verificador.php?paymentToken="+data.paymentToken+"&paymentID="+data.paymentID+"&orderID="+data.orderID;
            });
        }

    }, '#paypal-button-container');
</script>

<?php 
    include './templates/pie-pagina.php' 
?>