<?php

if(isset($_POST['linea'])){
    $datos = $_POST['linea'];
    $archivo = fopen("./datos.txt","a");
    fwrite($archivo, "\n$datos");
    fclose($archivo);
    echo 'Linea agregada con exito';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Agregar informacion de formulario a un TXT</h2>

    <form action="./05-formulario.php" method="post">
        <label for="linea">Linea a agregar:</label><br>
        <textarea name="linea" id="linea" rows="5" cols="30"></textarea>
        <button type="submit">Enviar</button>
    </form>
  

</body>
</html>