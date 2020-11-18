<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<br>
<h3>Lista del carrito</h3>

<?php if(!empty($_SESSION['CARRITO'])){?>


<table class="table table-ligth">
    <tbody>
        <tr>
            <th width="40%" class="text-center">Descripcion</th>
            <th width="15%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="40%" class="text-center">Total</th>
            <th width="5%">---</th>
        </tr>

        <!--Declaracion de la variable total-->
        <?php $total=0; ?>

        <!--Bucle de los productos que contiene la sesion actual-->
        <?php foreach($_SESSION['CARRITO'] as $indice=>$producto){?>

        <tr>
            <td width="40%" class="text-center"><?php echo $producto['NOMBRE']?></td>
            <td width="15%" class="text-center"><?php echo $producto['CANTIDAD']?></td>
            <td width="20%" class="text-center"><?php echo $producto['PRECIO']?></td>
            <td width="40%" class="text-center">
                <!--Calculo Cantidad por precio = Total-->
                <?php echo  number_format($producto['PRECIO']*$producto['CANTIDAD'],2) ?>
            </td>

            <td width="5%">
                <form action="" method="post">
                    <input type="hidden" name="id" id="id"
                        value="<?php echo openssl_encrypt($producto['ID'],COD,KEY);?>">
                    <button class="btn btn-danger" type="submit" name="btnAction" value="Eliminar">Eliminar</button>
                </form>
            </td>
            
        </tr>

        <?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);?>
        <?php } ?>

        <!--Tabla total de la compra -->
        <tr>
            <td colspan="3" align="right">
                <h3>Total</h3>
            </td>
            <td align="right">
                <h3>$<?php echo number_format($total,2);?></h3>
            </td>
            <td></td>
        </tr>

        <tr>
            <td colspan="5">
                <form action="pagar_2.php" method="post">
                    <div class="alert alert-success" role="alert">
                        <div class="form-group">
                            <label for="my-input">Correo de contacto:</label>
                            <input id="email" class="form-control" type="email" name="email"
                                placeholder="Escribe tu correo aquí" required>
                        </div>
                    <small id="emailHelp" class="form-text text-muted" >
                        Lo productos se enviarán a este correo
                    </small>  
                    </div>

                    <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnAccion" value="proceder">
                        Proceder a Pagar >>
                    </button>
                </form>

            </td>
        </tr>


    </tbody>
</table>

<?php } 
else{ ?>
<div class="alert alert-success">No hay productos en el Carrito</div>
<?php }?>

<?php
include 'templates/pie-pagina.php';
?>