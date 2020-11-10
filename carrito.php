<?php
session_start();

    $mensaje = "";

    if(isset($_POST['btnAction'])){
         switch($_POST['btnAction']){
             case 'Agregar':

                if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY)) ){
                    $ID = openssl_decrypt($_POST['id'],COD,KEY);
                    /**$mensaje.="ID Correcto... ".$ID."<br/>";**/
                }else{
                    $mensaje.="Upss... ID Incorecto".$ID."<br/>";
                    break;
                }
        
                if(is_string(openssl_decrypt( $_POST['nombre'], COD, KEY))){
                    $NOMBRE = openssl_decrypt( $_POST['nombre'], COD, KEY);
                    /**$mensaje.="Nombre ".$NOMBRE."<br/>";**/
                }else{
                    $mensaje.="Upss... Algo paso con tu nombre".$NOMBRE."<br/>";
                    break;
                }
        
                if(is_numeric(openssl_decrypt( $_POST['precio'], COD, KEY))){
                    $PRECIO = openssl_decrypt( $_POST['precio'], COD, KEY);
                    /**$mensaje.="El precio es... ".$PRECIO."<br/>";**/
                }else{
                    $mensaje.="Upss... El precio esta Incorrecto ".$PRECIO."<br/>";
                    break;
                }

                if(is_numeric(openssl_decrypt( $_POST['cantidad'], COD, KEY))){
                    $CANTIDAD = openssl_decrypt( $_POST['cantidad'], COD, KEY);
                    /**$mensaje.="Cantidad ".$CANTIDAD."<br/>";**/
                }else{
                    $mensaje.="Upss... Cantidad Incorrecta".$CANTIDAD."<br/>";
                    break;
                }
        
                /**Sesiones de usuarios dando clic en el boton agg al carrito*/
                if(!isset($_SESSION['CARRITO'])){
                    $producto=array(
                        'ID'=> $ID,
                        'NOMBRE'=> $NOMBRE,
                        'PRECIO'=> $PRECIO,
                        'CANTIDAD'=> $CANTIDAD,
                );
                    $_SESSION['CARRITO'][0]=$producto;
        
                }else{
                    $numeroProductos=count($_SESSION['CARRITO']);
                    $producto=array(
                        'ID'=> $ID,
                        'NOMBRE'=> $NOMBRE,
                        'PRECIO'=> $PRECIO,
                        'CANTIDAD'=> $CANTIDAD,
                );
                        $_SESSION['CARRITO'][$numeroProductos]=$producto;
                }

                $mensaje= print_r($_SESSION, true);
                /* Se muestra mensaje de session**/

             break;
         }

    }
    /**if(isset($_POST['btnAction2'])){
        $mensaje.="ID Correcto btnAction2  --->pro";
    }**/

?>