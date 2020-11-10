<?php
session_start();

    $mensaje = "";

    if(isset($_POST['btnAction'])){
        if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY)) ){
            $ID = openssl_decrypt($_POST['id'],COD,KEY);
            $mensaje.="ID Correcto... ".$ID."<br/>";
        }else{
            $mensaje.="Upss... ID Incorecto".$ID."<br/>";
        }

        if(is_string(openssl_decrypt( $_POST['nombre'], COD, KEY))){
            $NOMBRE = openssl_decrypt( $_POST['nombre'], COD, KEY);
            $mensaje.="Nombre ".$NOMBRE."<br/>";
        }else{
            $mensaje.="Upss... Algo paso con tu nombre".$NOMBRE."<br/>";
        }


        if(is_numeric(openssl_decrypt( $_POST['cantidad'], COD, KEY))){
            $CANTIDAD = openssl_decrypt( $_POST['cantidad'], COD, KEY);
            $mensaje.="Cantidad ".$CANTIDAD."<br/>";
        }else{
            $mensaje.="Upss... ID Incorecto".$CANTIDAD."<br/>";
        }


        if(is_numeric(openssl_decrypt( $_POST['precio'], COD, KEY))){
            $PRECIO = openssl_decrypt( $_POST['precio'], COD, KEY);
            $mensaje.="El precio es... ".$PRECIO."<br/>";
        }else{
            $mensaje.="Upss... ID Incorecto".$PRECIO."<br/>";
        }

        if(isset($_SESSION['CARRITO'])){

        }
    }
    /**if(isset($_POST['btnAction2'])){
        $mensaje.="ID Correcto btnAction2  --->pro";
    }**/

?>