<?php
$servidor = "localhost";
$usuario = "root";
$clave = "";
$bd = "registromedico";

$conexion = mysqli_connect($servidor, $usuario, $clave, $bd);

if (!$conexion) {
    die("No se ha podido conectar con el servidor:<br><br> " . mysqli_connect_error());
}

$id_mascota = $_POST['id_mascota'];

$query = "SELECT * FROM registromedico WHERE idAnimal = ?";
$stmt = mysqli_prepare($conexion, $query);
mysqli_stmt_bind_param($stmt, 'i', $id_mascota);
mysqli_stmt_execute($stmt);
$resultado = mysqli_stmt_get_result($stmt);
$mascota = mysqli_fetch_assoc($resultado);

if (!$mascota) {
    echo "No se encontró la mascota con ID: $id_mascota";
    exit;
}

mysqli_stmt_close($stmt);
mysqli_close($conexion);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificación de Datos de Mascota</title>
    <link rel="stylesheet" href="estilos/EstilosMod.css">
</head>
<body>

<div class="header">
    <h1>Modificación de Datos de Mascota</h1>
</div>

<div class="container">
    <div class="form-container">
        <form id="modificarMascotaForm" action="PHP/modificarreg.php" method="POST">
            <label for="nombre_mascota">Nombre de la mascota:</label>
            <input type="text" id="nombre_mascota" name="nombre_mascota" value="<?php echo $mascota['Nomma']; ?>" required>
            <br>
            <label for="nombre_dueno">Nombre del dueño:</label>
            <input type="text" id="nombre_dueno" name="nombre_dueno" value="<?php echo $mascota['Nomdue']; ?>" required>
            <br>
            <label for="edad">Edad:</label>
            <input type="number" id="edad" name="edad" value="<?php echo $mascota['Edad']; ?>" required>
            <br>
            <label for="peso">Peso:</label>
            <input type="text" id="peso" name="peso" value="<?php echo $mascota['Peso']; ?>" required>
            <br>
            <label for="tamanio">Tamaño:</label>
            <input type="text" id="tamanio" name="tamanio" value="<?php echo $mascota['Tamanio']; ?>" required>
            <br>
            <label for="telefono_dueno">Teléfono del dueño:</label>
            <input type="tel" id="telefono_dueno" name="telefono_dueno" value="<?php echo $mascota['Teldue']; ?>" required>
            <br>
            <label for="direccion_dueno">Dirección del dueño:</label>
            <textarea id="direccion_dueno" name="direccion_dueno" required><?php echo $mascota['Dirdue']; ?></textarea>
            <br>
            <input type="hidden" id="id_mascota" name="id_mascota" value="<?php echo $mascota['idAnimal']; ?>">
            <br>
            <input type="submit" value="Modificar" class="button">
            <button type="button" onclick="window.location.href='Portada.html'" class="button">Regresar</button>
        </form>
    </div>
</div>

</body>
</html>
