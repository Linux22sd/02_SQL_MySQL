
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Write</title>
</head>
<body>

    <h2>Sobreescribir contenido de un archivo TXT sobrescribira todo el contenido</h2>
    
    <?php $archivo = fopen('./datos.txt', 'w'); ?>
    <?php fwrite($archivo,"1- esta es la linea numero uno del archivo txt."); ?>
    <?php fclose($archivo); ?>

</body>
</html>