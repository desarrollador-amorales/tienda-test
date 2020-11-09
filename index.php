<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <a class="navbar-brand" href="index.php">Logo de la empresa</a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Carrito (0)<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <br>
    </br>

    <div class="container">
        <br>
        <br>

        <div class="alert alert-success">
            <?php 
                echo $mensaje; 
            ?>

            <a href="#" class="badge bagde-success">Ver carrito</a>
        </div>

        <div class="row">
            <?php
                $sentencia=$pdo-> prepare("SELECT * FROM tblproductos");
                 $sentencia->execute();
                $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
                /**print_r($listaProductos)
                 * ;**/
            ?>
            <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <div class="card">
                    <img title="<?php echo $producto['Nombre'];?>" class="card-img-top"
                        src="<?php echo $producto['Imagen'];?>" alt="<?php echo $producto['Nombre'];?>"
                        data-toggle="popover" data-trigger="hover"
                        data-content="<?php echo $producto['Descripcion'];?>">
                    <div class="card-body">
                        <span><?php echo $producto['Nombre'];?></span>
                        <h5 class="card-title">$<?php echo $producto['Precio'];?></h5>
                        <p class="card-text">Descripcion</p>
                        <!--Cuatro elementos tipo text para enviar el formulario del carrito-->
                        <form action="" method="post">
                            <input type="text" name="id" id="id"
                                value="<?php echo openssl_encrypt($producto['ID'],COD,KEY);?>">
                            <input type="text" name="nombre" id="nombre"
                                value="<?php echo openssl_encrypt($producto['Nombre'],COD,KEY);?>">
                            <input type="text" name="precio" id="precio"
                                value="<?php echo openssl_encrypt($producto['Precio'],COD,KEY);?>">
                            <input type="text" name="cantidad" id="cantidad"
                                value="<?php echo openssl_encrypt(1,COD,KEY);?>">

                            <button class="btn btn-primary" name="btnAction" value="Agregar" type="submit">
                                Agregar al carrito
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <?php } ?>
       <!-- </div>-->

        <script>
        $(function() {
            $('[data-toggle="popover"]').popover()
        });
        </script>
    </div>

</body>

</html>