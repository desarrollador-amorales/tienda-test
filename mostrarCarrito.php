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
            <td width="40%" class="text-center"><?php echo $producto['NOMBRE']?></th>
            <td width="15%" class="text-center"><?php echo $producto['CANTIDAD']?></th>
            <td width="20%" class="text-center"><?php echo $producto['PRECIO']?></th>
            <td width="40%" class="text-center">
                <!--Calculo Cantidad por precio -->
                <?php echo  number_format($producto['PRECIO']*$producto['CANTIDAD'],2) ?></th>
            <td width="5%"><button class="btn btn-danger" type="button">Eliminar</button></th>
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

    </tbody>
</table>

<?php } 
else{ ?>
<div class="alert alert-success">No hay productos en el Carrito</div>
<?php }?>

<?php
include 'templates/pie-pagina.php';
?>