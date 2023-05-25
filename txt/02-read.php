
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read</title>
</head>
<body>
    <h2>Imprimir todo el contenido de un archivo TXT</h2>

    <?php $archivo = fopen('./datos.txt', 'r'); ?>
    <?php while(!feof($archivo)): ?>
    <?php  $frase = fgets($archivo); ?>
    <?=        "<p><em> $frase </em></p>" ?>
    <?php endwhile; ?>
    <?php fclose($archivo); ?>

    <h2>Imprimir linea especifica del archivo TXT</h2>

    <?php $archivo = fopen('./datos.txt', 'r'); ?>
    <?php $contador = 0; ?>
    <?php while(!feof($archivo)): ?>
    <?php  $frase = fgets($archivo); ?>
    <?php  $contador = $contador + 1; ?>
    <?php  if($contador == 6): ?>
    <?=        "<p><em> $frase </em></p>" ?>
    <?php  endif; ?>
    <?php endwhile; ?>
    <?php fclose($archivo); ?>

</body>
</html>