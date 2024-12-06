document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('formularioRegistro').addEventListener('submit', validarFormulario);
});

function validarFormulario(event) {
    event.preventDefault();
    
    const nombreMascota = document.getElementById('nombre_mascota').value.trim();
    const nombreDueno = document.getElementById('nombre_dueno').value.trim();
    const edad = document.getElementById('edad').value.trim();
    const peso = document.getElementById('peso').value.trim();
    const curp = document.getElementById('curp').value.trim();
    const telefonoDueno = document.getElementById('telefono_dueno').value.trim();

   
    const regexNombre = /^[a-zA-Z\s]+$/;
    const regexNumerico = /^\d+$/;
    const regexCurp = /^[A-Z]{4}\d{6}[HM][A-Z]{5}[A-Z0-9]\d$/;
    const regexTelefono = /^\d{10}$/;


    if (!regexNombre.test(nombreMascota)) {
        alert('El nombre de la mascota debe contener solo letras y espacios.');
        return;
    }
    if (!regexNombre.test(nombreDueno)) {
        alert('El nombre del dueño debe contener solo letras y espacios.');
        return;
    }
    if (!regexNumerico.test(edad)) {
        alert('La edad debe ser un valor numérico.');
        return;
    }
    if (!regexNumerico.test(peso)) {
        alert('El peso debe ser un valor numérico.');
        return;
    }
    if (!regexCurp.test(curp)) {
        alert('La CURP no tiene un formato válido.');
        return;
    }
    if (!regexTelefono.test(telefonoDueno)) {
        alert('El número telefónico debe contener exactamente 10 dígitos.');
        return;
    }


    document.getElementById('formularioRegistro').submit();
}
