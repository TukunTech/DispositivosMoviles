document.getElementById("contactForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Evita que se envíe el formulario de forma tradicional

    // Obtener valores del formulario
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;

    // Lógica simulada de envío
    if (name && email) {
        document.getElementById("confirmationMessage").textContent = `Gracias ${name}, tu contacto ha sido registrado correctamente.`;
        document.getElementById("contactForm").reset();
    } else {
        document.getElementById("confirmationMessage").textContent = "Por favor completa todos los campos.";
    }
});
