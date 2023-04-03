<?php
$servername = "localhost";
$username = "root";
$password = "roger01";
$dbname = "login_register_db";

// Crea una conexión con la base de datos
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verifica si la conexión es exitosa
if (!$conn) {
  die("Conexión fallida: " . mysqli_connect_error());
}

// Verifica si se ha enviado el ID del producto por POST
if (isset($_POST["id"])) {
  // Escapa el valor del ID para prevenir inyección SQL
  $id = mysqli_real_escape_string($conn, $_POST["id"]);

  // Escribir una consulta SQL para actualizar la cantidad del producto
  $sql = "UPDATE productos SET cantidad = cantidad - 1 WHERE id = $id";

  // Ejecutar la consulta
  if (mysqli_query($conn, $sql)) {
    echo "Cantidad actualizada correctamente";
  } else {
    echo "Error al actualizar la cantidad: " . mysqli_error($conn);
  }
}

// Cerrar la conexión con la base de datos
mysqli_close($conn);
?>

