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
                    $mensaje= "Producto agregado al carrito";
        
                }else{
                    $idProductos=array_column($_SESSION['CARRITO'],"ID");

                    if(in_array($ID,$idProductos)){ // pregunto si ese id esta dentro del arreglo de todos los id de los productos
                        echo "<script> alert('Elemento ya esta agregado al carrito...');</script>";
                        $mensaje="";
                    }else{ // caso contrario en caso de que no este agregado el carrito se agrega como un producto mas 
                        $numeroProductos=count($_SESSION['CARRITO']);
                        $producto=array(
                            'ID'=> $ID,
                            'NOMBRE'=> $NOMBRE,
                            'PRECIO'=> $PRECIO,
                            'CANTIDAD'=> $CANTIDAD,
                                        );
                        $_SESSION['CARRITO'][$numeroProductos]=$producto;
                        $mensaje= "Producto agregado al carrito";
                        }
                }

                //$mensaje= print_r($_SESSION, true);
                /* Se muestra mensaje de session**/

             break;

             case 'Eliminar':
                if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY))){
                    $ID = openssl_decrypt($_POST['id'],COD,KEY);
                  
                    foreach($_SESSION['CARRITO'] as $indice=>$producto){
                        if($producto['ID'] == $ID){
                            unset($_SESSION['CARRITO'][$indice]);
                            //echo "<script> alert('Elemento borrado...');</script>";
                        break;/**provisionalmente para no eliminar todos los productos con ese id */
                        }
                    }

                }
            break;

         }


    }
    /**if(isset($_POST['btnAction2'])){
        $mensaje.="ID Correcto btnAction2  --->pro";
    }**/

?>