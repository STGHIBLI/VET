function validarFormulario() {
    console.log("Validando formulario...");
    var nombreMascota = document.getElementById("nombreMascota").value;
    var veterinario = document.getElementById("veterinario").value;

    if (!esCadenaDeTexto(nombreMascota)) {
        alert("El nombre de la mascota debe ser una palabra (solo letras y espacios).");
        return false;
    }

    if (!esCadenaDeTexto(veterinario)) {
        alert("El nombre del veterinario debe ser una palabra (solo letras y espacios).");
        return false;
    }

    return true;
}

function esCadenaDeTexto(valor) {
    return /^[A-Za-z\s]+$/.test(valor);
}