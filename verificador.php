<?php 
    
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';

?>
<?php 
    //print_r($_GET);

    $ClientID="Ad7viq2dL6bbvnnvA5QT2BG2iRDSEACSml5CVrC8sY0bNYUR5McegWGgISI9LF4YhQw5s3goA4LpLiTI";
    $Secret="EBJYjK3CkAZ0svAGqJ--6U8Uy9-lY9MRkmSOfe5DT3Pk-ejSCNHWxvPWvVdR--romDy6rWHksKOESSTG";


                // https://developer.paypal.com/docs/api/get-an-access-token-curl/
                $Login= curl_init("https://api-m.sandbox.paypal.com/v1/oauth2/token"); //Mecanismo de solicitud de Datos
                curl_setopt($Login,CURLOPT_RETURNTRANSFER, TRUE);
                curl_setopt($Login,CURLOPT_USERPWD,$ClientID.":".$Secret); 
                curl_setopt($Login,CURLOPT_POSTFIELDS, "grant_type=client_credentials"); //Solicitar toda la informacion que utiliza el ClientID y el secret
                $Respuesta=curl_exec($Login); //Ejecutar todos los procedimientos anteriores

                //print_r($Respuesta);//Devuelve un formato json con el access token
                $objRespuesta=json_decode($Respuesta);//Decodificar el json en un objeto 
                $accessToken=$objRespuesta->access_token; //obtencion del token unicamente
                //print_r($accessToken);
                
                //Recepcion de todos los datos de la compra que se hace
                /**
                 * Bloque de Codigo que sirve  */
                $venta = curl_init("https://api.sandbox.paypal.com/v1/payments/payment/".$_GET['paymentID']);
                curl_setopt($venta,CURLOPT_HTTPHEADER,array("Content-Type: application/json","Authorization: Bearer ".$accessToken));
               
                curl_setopt($venta,CURLOPT_RETURNTRANSFER, TRUE); // me sirve para que toda la informacion se almacene en la variable $respuestaVenta

                $respuestaVenta=curl_exec($venta);
                $objResponseVenta = json_decode($respuestaVenta);

                //print_r($objResponseVenta->transactions[0]->custom);  visualizacion de acuerdo al objeto que vamos accediendo

                $state=$objResponseVenta->state;
                $email=$objResponseVenta->payer->payer_info->email;
                $total=$objResponseVenta->transactions[0]->amount->total;
                $currency= $objResponseVenta->transactions[0]->amount->currency;
                $custom= $objResponseVenta->transactions[0]->custom;


                //print_r($custom);

                $clave=explode("#",$custom); //Sirve para dividir la informacion ejm [0]brqk4gvvu358atm34412186nlb # [1]g8iC6fRddRjAkVsBS3g2nQ==

                $SID=$clave['0'];
                $claveVenta=openssl_decrypt($clave['1'],COD,KEY);


                //print_r($claveVenta); //Esta clave solo la sabra paypal y mi sitio web por las bondades de la encriptacion y de desencriptacion
               
                curl_close($venta); //Cerrando peticion de Venta
                curl_close($Login); //Cerrando peticion de Login

                /** Validando la informacion que nos retorna PayPal */

                if($state == "approved"){
                    $mensajePayPal="<h3>Pago Aprobado</h3>";
                    $sentencia=$pdo->prepare("UPDATE `tblventas` 
                                             SET `paypal_datos` = :payPalDatos, 
                                                 `estado` = 'aprobado' 
                                             WHERE `tblventas`.`ID` = :ID;"); //Actualizar tabla de ventas

                    $sentencia->bindParam(":ID", $claveVenta);
                    $sentencia->bindParam(":payPalDatos", $respuestaVenta);
                    $sentencia->execute();


                    //Se actualiza al estado completo en nuestra base de datos, una vez que valide con los datos que nos proporciona Paypal 
                    $sentencia=$pdo->prepare("UPDATE `tblventas` 
                                                SET `estado` = 'completo'
                                                WHERE clave_transaccion  = :claveTransaccion
                                                AND total =:total
                                                AND ID =:ID"); //Actualizar tabla de ventas

                    $sentencia->bindParam(":claveTransaccion", $SID);
                    $sentencia->bindParam(":total", $total);
                    $sentencia->bindParam(":ID", $claveVenta);
                    $sentencia->execute();

                    $completado=$sentencia->rowCount();//Devolver los registros modificados con la ultima instruccion o sentencia ejecutada.

                }else{
                    $mensajePayPal="<h3>Hay un problema con el pago de Paypal</h3>";
                }                

?>

<div class="jumbotron">
    <h1 class="display-4">! Listo ¡</h1>
    
    <p class="lead"><?php echo $mensajePayPal?></p>
    
    <hr class="my-4">
    
    <p>
        <?php 
            if($completado >= 1){
                $sentencia=$pdo->prepare("select * from tblventa_detalle td , tblproductos t 
                                where td.id_producto = t.ID 
                                and td.id_venta =:ID_VENTA");
                $sentencia->bindParam(":ID_VENTA", $claveVenta);
                $sentencia->execute();

                $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
                //print_r($listaProductos);
            }          
        
        ?>
        <div class="row">
            <?php foreach($listaProductos as $producto){?>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top" src="<?php echo $producto['Imagen'];?>">
                    <div class="card-body">
                        <p class="card-text"><?php echo $producto['Nombre'];?></p>
                        <?php if($producto['descargado'] < DESCARGAS_PERMITIDAS){ ?> 

                        <form method="post" action="descargas.php">
                            <input type="hidden" name="IDVENTA" id=""  value = "<?php echo openssl_encrypt($claveVenta,COD,KEY);?>">
                            <input type="hidden" name="IDPRODUCTO" id ="" value ="<?php echo openssl_encrypt($producto['id_producto'],COD,KEY);?>">    

                            <button class="btn btn-success" type="submit">Descargar</button>    
                        </form>

                    <?php } else {?>
                        <button class="btn btn-success" type="button" disabled >Descargar</button>    
                    <?php }?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>

    </p>
</div>

<?php
include 'templates/pie-pagina.php';
?>