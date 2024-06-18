const form = document.getElementById("formulario");

form.addEventListener("submit", function (event) {
    event.preventDefault();

    const usuario = document.getElementById("usuario");
    const senha = document.getElementById("senha");

    if(usuario.value.trim() === "" || senha.value.trim() === "" ) {
        alert("Usuario e/ou Senha não preenchidos!");
    } else {
        form.submit();
    }
});