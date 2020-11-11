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
        echo "<h3>".$total."</h3>";
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


    

?>

<div class="jumbotron">
    <h1 class="display-4">¡Paso final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagar con Paypal la cantidad de
        <h4><?php echo number_format($total,2) ?></h4>
    </p>
    
    <p>Los productos podrán ser descargados una vez que se procese el pago
        <strong>(Para aclaraciones: armj1923@gmail.com)</strong>
    </p>
</div>





<?php
include 'templates/pie-pagina.php';
?>