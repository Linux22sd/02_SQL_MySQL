<?php
    if(isset($_GET['producto_id'])){
        $producto_id = $_GET['producto_id'];
        require_once("connection.php");

        $eliminar = mysqli_query($connection, "DELETE FROM productos WHERE `producto_id` = $producto_id LIMIT 1");

        echo "<h2 class='eliminado'>Producto eliminado con exito</h2>";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles.css">
    <title>Eliminar regristro</title>
</head>
<body>
    <h1>Eliminirar registro</h1>
    <hr>
    <div class="productos">
        <p><a href="productos.php">Productos</a> &raquo; Eliminar </p>
    </div>

   
    
</body>
</html>