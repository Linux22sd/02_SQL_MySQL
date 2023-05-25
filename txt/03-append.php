
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h2>Agregar contenido a un archivo TXT</h2>
    
    <?php $archivo = fopen('./datos.txt', 'a'); ?>
    <?php fwrite($archivo,"\n8- esta es la linea numero ocho del archivo txt."); ?>
    <?php fclose($archivo); ?>

    <h3>Linea agregada con exito</h3>

</body>
</html>