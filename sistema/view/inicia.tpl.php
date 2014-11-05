<html>
    <head></head>
    <body>
    <h1><?php echo $titulo ?></h1>
    <p><?php echo $contenido ?></p>



<?php

include('./classes/preguntas.php');

$qs= new Preguntas();
$qs->mostrarPreguntas();

?>






    </body>
</html>