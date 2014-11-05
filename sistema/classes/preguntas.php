<?php
include("./db/db.php");
class Preguntas{
    private $id;
    private $pregunta;
    private $respuesta;
    private $f1;
    private $f2;
    public function muestraCalif($idu){
        $sql="SELECT calif FROM preguntadetalle WHERE id=$idu ORDER BY calif DESC LIMIT 1";
        $query=mysql_query($sql);

 
       echo mysql_result($query,0,'calif');


    }
    public function actualizaInfo($id1,$calif){
        $sql="insert into preguntadetalle(id,calif) values($id1,$calif)  ";
        mysql_query($sql)or die();
        print "<meta http-equiv='refresh' content='0;
		url=../index.php?url=resultados'>";

    }
    public function mostrarPreguntas(){
        echo "<div class='container theme-showcase' role='main'>
        <div class=table-responsive>
        <form action='./controller/inicia.php' method='GET'>
            <table class='table table-striped'>
                ";
        echo" <tr> <th>No.</th><th>Pregunta</th><th>Opciones</th>   </tr>";

        $sql="SELECT * FROM preguntas	ORDER BY RAND() LIMIT 10";
        $query=mysql_query($sql) or die("error mostrar preguntas");
        for($y=0; $y<10; $y++){
            $pregunta=mysql_result($query,$y,'pregunta');
            $r1=mysql_result($query,$y,'respuesta');
            $r2=mysql_result($query,$y,'f1');
            $r3=mysql_result($query,$y,'f2');
           echo" <tr> <th>$y</th><th>$pregunta</th><th>
           <select name='respuesta$y' id='respuesta$y' required=''>
           <option value=''>-Selecciona</option>
		   <option value='$r1'>$r1</option>
           <option value='$r2'>$r2</option>
           <option value='$r3'>$r3</option>
           </select>
           </th>   </tr>
           ";
        }
       echo"
    <tr><td colspan=3 align=Center><input type='submit' name='ok' id='ok'  value='ok'> </td> </tr>
 </table>
 </form>
        </div>
        </div>";

    }

}
?>