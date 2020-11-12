<?php 
    
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';

?>

<!--Controlar las tabla de descargas-->
<?php 

    print_r($_POST);

    if($_POST){ //Si hubo una solicitud con el metodo post
        $idVenta=openssl_decrypt($_POST['IDVENTA'],COD,KEY); //Recibe las variables que le envia des de la pagina verificador.php
        $idProducto=openssl_decrypt($_POST['IDPRODUCTO'],COD,KEY);

                $sentencia=$pdo->prepare("SELECT * FROM  tblventa_detalle
                                                WHERE id_venta=:id_venta
                                                AND id_producto =:id_producto
                                                AND descargado < ".DESCARGAS_PERMITIDAS); // permite 1 descarga o n descargas de acuerdo a la sentencia
                $sentencia->bindParam(":id_venta",$idVenta);
                $sentencia->bindParam(":id_producto",$idProducto);
                $sentencia->execute();

            $listadoProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
            print_r($listadoProductos);

            if($sentencia->rowCount()>0){
               
                echo "Archivo en Descarga-->";

                $nombreArchivo="archivos/".$listadoProductos[0]['id_producto'].".pdf"; // de acuerdo al id del producto almacenado en la base de datos, se tiene que poner el nombre del archivo para que pueda encontrarlo y descargarlo.

                $nuevoNombreArchivo=$idVenta."--".$idProducto.".pdf";

                echo $nuevoNombreArchivo;

                header("Content-Transfer-Encoding: binary");
                header("Content-type: application/force-download");
                header("Content-Disposition: attachment; filename=$nuevoNombreArchivo");
                readfile("$nombreArchivo");

                
                $sentencia=$pdo->prepare("UPDATE `tblventa_detalle` 
                SET `descargado` = descargado+1
                WHERE id_venta=:id_venta
                AND id_producto =:id_producto"); //Actualizar tabla detalle de ventas

                $sentencia->bindParam(":id_venta",$idVenta);
                $sentencia->bindParam(":id_producto",$idProducto);
                $sentencia->execute();
                

            }else{
                include 'templates/cabecera.php';
                echo "<br><br><br><br><br><h2>Tus descargas se agotaron</h2>";
                include 'templates/pie-pagina.php';
            }
    }
?>
