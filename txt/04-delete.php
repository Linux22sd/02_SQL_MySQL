
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h2>Eliminar el archivo TXT</h2>
    
    <?php $archivo = './datos.txt'; ?>
    <?php unlink($archivo); ?>

    <h3>Archivo eliminado</h3>

</body>
</html>