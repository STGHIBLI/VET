function reproducirSonido() {
    var especieSeleccionada = document.getElementById("especie").value;
    var audio = new Audio();
    if (especieSeleccionada === "Perro") {
        audio.src = "sonidos/Perro.mp3";
    } else if (especieSeleccionada === "Gato") {
        audio.src = "sonidos/Gato.mp3";
    } else if (especieSeleccionada === "Ave") {
        audio.src = "sonidos/Pajaro.mp3";
    } else if (especieSeleccionada === "Ganado") {
        audio.src = "sonidos/Vaca.mp3";
    } else if (especieSeleccionada === "Leon") {
        audio.src = "sonidos/Leon.mp3";
    }  else if (especieSeleccionada === "Velocirraptor") {
        audio.src = "sonidos/Velocirraptor.mp3";
    } else if (especieSeleccionada === "Hamster") {
        audio.src = "sonidos/Hamster.mp3";
    }
    audio.play();
}
