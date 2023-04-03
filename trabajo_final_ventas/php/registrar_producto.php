<?php

    //CONEXION 

    include 'conexion_be.php';

    $nombre_producto=$_POST["nombre_producto"];
    $precio=$_POST["precio"];
    $cantidad=$_POST["cantidad"];
    $imagen=$_POST["imagen"];
    
    $query = "INSERT INTO productos (nombre_producto,precio,cantidad,imagen) VALUES('$nombre_producto','$precio','$cantidad','$imagen')";

    $veri= mysqli_query($conexion, "SELECT * FROM productos WHERE nombre_producto='$nombre_producto' ");
        if(mysqli_num_rows ($veri) > 0){
               echo '
               <script>
               alert(" ESTE PRODUCTO YA AH SIDO REGISTRADO INTENTE DE NUEVO");
               window.location = "../index.php";
               </script>';
               exit();}

    $ejecutar =mysqli_query($conexion,$query);

    
    if ($ejecutar ){
        echo'<script>

                alert("EL PRODUCTO SE REGISTRO CORRECTAMENTE ")
                window.location="../index.php";
        </script>

        ';

    }
    
    else{
        echo'<script>

                alert("EL PRODUCTO NO HA SIDO REGISTRADO CORRECTAMENTE")
                window.location="../index.php";
        </script>

        ';
    }
    mysqli_close($conexion);



?>