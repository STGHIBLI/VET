<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar animalito</title>
    <link rel="stylesheet" href="../CSS/Estilosphp.css">
</head>
<body>

<?php
$usuario = "root";
$clave = "";
$bd = "veterinarialos_mushashos";

$connecion = mysqli_connect("localhost", $usuario, $clave, $bd);

if (!$connecion) {
    die("No se ha podido conectar con el servidor:<br><br> " . mysqli_connect_error());
}

$Nomma = $_POST["nombre_mascota"];
$Nomdue = $_POST["nombre_dueno"];
$Edad = $_POST["edad"];
$Peso = $_POST["peso"];
$Teldue = $_POST["telefono_dueno"];
$Dirdue = $_POST["direccion_dueno"];

if (empty($Nomma) || empty($Nomdue) || empty($Teldue) || empty($Dirdue)) {
    echo "Por favor, complete todos los campos obligatorios.<br><br>";
    exit();
}

$instruccion_SQL = "INSERT INTO `registromedico` (`Nomma`, `Nomdue`, `Edad`, `Peso`, `Teldue`, `Dirdue`) 
                    VALUES ('$Nomma', '$Nomdue', '$Edad', '$Peso', '$Teldue', '$Dirdue')";

$resultado = mysqli_query($connecion, $instruccion_SQL);

if ($resultado) {
    $last_id = mysqli_insert_id($connecion); 
    echo "¡Registro hecho con éxito!<br><br>";
    echo "ID del registro: " . $last_id . "<br><br>";
} else {
    echo "Hubo un error al hacer el registro. Intentelo de nuevo :c<br><br>";
    echo "Error: " . mysqli_error($connecion) . "<br><br>";
}

mysqli_close($connecion);
?>

<a href="../Portada.html" class="boton-regresar">Regresar al menú principal</a>
</body>
</html>
