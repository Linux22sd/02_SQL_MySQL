<?php
    if(isset($_POST['enviar'])){
        $foto_producto = 'default.jpg';
        $producto_nombre = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];
        $categoria = $_POST['categoria'];
        $producto_precio = floatval($_POST['precio']);
        $cantidad = intval($_POST['cantidad']);
        
        require_once("connection.php");

        $insertar = mysqli_query($connection , 

            "INSERT INTO productos(
                `producto_id`,
                `foto_producto`,
                `producto_nombre`,
                `descripcion`,
                `categoria`,
                `producto_precio`,
                `cantidad`
                )
            VALUES(
                NULL,
                '$foto_producto', 
                '$producto_nombre', 
                '$descripcion', 
                '$categoria', 
                '$producto_precio', 
                '$cantidad'
            )"
        );

        echo "<h2 class='registrado'>Producto registrado con exito</h2>";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles.css">
    <title>Agregar nuevo producto</title>
</head>
<body>
    <h1>Agregar producto</h1>
    <hr>
    <div class="productos">
        <p><a href="productos.php">Productos</a> &raquo; Agregar </p>
    </div>

    <form action="#" method="post">
        <fieldset>
            <legend><em>Llena los campos el formulario</em></legend>
            <table class="tabla_ea">
                <tr>
                    <td><label for="nombre">Nombre:</label></td>
                    <td><input type="text" name="nombre" id="nombre"> </td>
                </tr>
                <tr>
                    <td><label for="categoria">Categoria:</label></td>
                    <td>
                        <select name="categoria" id="categoria">
                            <option value="null"></option>
                            <option value="computo">Computo</option>
                            <option value="telefonia">Telefonia</option>
                            <option value="hogar">Hogar</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="precio">Precio:</label></td>
                    <td><input type="number" name="precio" id="precio"></td>
                </tr>
                <tr>
                    <td><label for="cantidad">Cantidad:</label></td>
                    <td><input type="number" name="cantidad" id="cantidad"></td>
                </tr>
                <tr>
                    <td><label for="descripcion">Descripcion:</label></td>
                    <td><textarea name="descripcion" id="descripcion" rows="8" cols="40"></textarea></td>
                </tr>
                <tr>
                    <td> <input class="borrar" type="reset" value="Borrar"></td>
                    <td> <input class="enviar" type="submit" value="Registrar" name="enviar"></td>
                </tr>
            </table>
        </fieldset>

    </form>
    
</body>
</html>