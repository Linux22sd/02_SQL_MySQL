<?php
    if(isset($_POST['enviar'])){
        $producto_id = $_POST['producto_id'];
        $producto_nombre = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];
        $categoria = $_POST['categoria'];
        $producto_precio = ($_POST['precio']);
        $cantidad = ($_POST['cantidad']);
        
        require_once("connection.php");

        $actualizar = mysqli_query($connection, 
            "UPDATE productos
                SET 
                    `producto_nombre` = '$producto_nombre',
                    `descripcion` = '$descripcion',
                    `categoria` = '$categoria',
                    `producto_precio` = '$producto_precio',
                    `cantidad` = '$cantidad'
                WHERE 
                    `producto_id` = '$producto_id'
            ");

        echo "<h2 class='registrado'>Producto Actualizado con exito</h2>";
    }
    if(isset($_GET['producto_id'])){
        $producto_id = $_GET['producto_id'];

        require_once("connection.php");
        $consulta = mysqli_query($connection, "SELECT * FROM productos WHERE `producto_id` = $producto_id");
        $fila = mysqli_fetch_array($consulta);

        $categoria = $fila['categoria'];
        if($categoria == "computo"){
            $categorias = '
                <option value="computo" selected>Computo</option>
                <option value="telefonia">Telefonia</option>
                <option value="hogar">Hogar</option>
            ';
        }
        elseif($categoria == "telefonia"){
            $categorias = '
                <option value="computo">Computo</option>
                <option value="telefonia" selected>Telefonia</option>
                <option value="hogar">Hogar</option>
            ';
        }
        elseif($categoria == "hogar"){
            $categorias = '
                <option value="computo">Computo</option>
                <option value="telefonia" >Telefonia</option>
                <option value="hogar" selected>Hogar</option>
            ';
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles.css">
    <title>Editar producto</title>
</head>
<body>
    <h1>Editar producto</h1>
    <hr>
    <div class="productos">
        <p><a href="productos.php">Productos</a> &raquo; Editar </p>
    </div>

    <form action="#" method="post">
        <fieldset>
            <legend><em>Valores actuales del producto</em></legend>
            <table class="tabla_ea">
                <tr>
                    <td><label for="nombre">Nombre:</label></td>
                    <td><input type="text" name="nombre" id="nombre" value="<?=$fila['producto_nombre']?>"></td>
                </tr>
                <tr>
                    <td><label for="categoria">Categoria:</label></td>
                    <td>
                        <select name="categoria" id="categoria">
                            <?= $categorias ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="precio">Precio:</label></td>
                    <td><input type="number" name="precio" id="precio" value="<?=$fila['producto_precio']?>"></td>
                </tr>
                <tr>
                    <td><label for="cantidad">Cantidad:</label></td>
                    <td><input type="number" name="cantidad" id="cantidad" value="<?=$fila['cantidad']?>"></td>
                </tr>
                <tr>
                    <td><label for="descripcion">Descripcion:</label></td>
                    <td><textarea class="text_window" name="descripcion" id="descripcion" rows="8" cols="40"><?=$fila['descripcion']?></textarea></td>
                </tr>
                <tr>
                    <td> <input type="hidden" value="<?= $producto_id ?>" name="producto_id"></td>
                    <td> <input class="enviar" type="submit" value="Registrar" name="enviar"></td>
                </tr>
            </table>
        </fieldset>

    </form>
    
</body>
</html>