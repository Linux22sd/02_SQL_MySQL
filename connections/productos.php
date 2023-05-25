<?php
require_once("./connection.php");
$consulta = mysqli_query($connection, "SELECT * FROM productos ORDER BY `producto_id` ASC");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles.css">

    <script>
      
        function confirmacion(){
            
            if(confirm("Deseas eliminar el producto?")){
                return true;
            }
            else{
                return false;
            }
        };
    </script>

    <title>Tienda en linea</title>
</head>

<body>
    <h1>Productos</h1>
    <hr>

    <div class="agregar">
        <p><a href="agregar.php">Agregar</a></p>
    </div>

    <table class="tabla">
        <thead class="tcabecera">
            <tr class="trenglon">
                <th class="ttitulo">Imagen</th>
                <th class="ttitulo">Nombre</th>
                <th class="ttitulo">Descripcion</th>
                <th class="ttitulo">Categoria</th>
                <th class="ttitulo">Precio</th>
                <th class="ttitulo">Cantidad</th>
                <th class="ttitulo">Acciones</th>
            </tr>
        </thead>
        <tbody class="tcuerpo">

            <?php while ($fila = mysqli_fetch_array($consulta)) : ?>
                <?php echo "
                <tr class='trenglon'>
                    <td class='tdata'> <img class='imagen'src='./imagenes/productos/{$fila['foto_producto']}' alt='producto'> </td>
                    <td class='tdata'> {$fila['producto_nombre']} </td>
                    <td class='tdata'> {$fila['descripcion']} </td>
                    <td class='tdata'> {$fila['categoria']} </td>
                    <td class='tdata'> $ {$fila['producto_precio']} MXN</td>
                    <td class='tdata'> {$fila['cantidad']} pzas</td>
                    <td class='tdata'> <a href='./editar.php?producto_id={$fila['producto_id']}'><img class='ico' src='./imagenes/iconos/editar.png' alt='Editar'></a> 
                        <a href='./eliminar.php?producto_id={$fila['producto_id']}' onclick='return confirmacion()'><img class='ico2' src='./imagenes/iconos/eliminar.png' alt='Eliminar'></a>
                    </td>
                </tr>
            "; ?>
            <?php endwhile; ?>

        </tbody>
    </table>

</body> 

</html>