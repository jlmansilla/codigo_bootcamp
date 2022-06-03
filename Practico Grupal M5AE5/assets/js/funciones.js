function validar(){
const btnEnviar = document.getElementById('btn-enviar');


  const nombreDeUsuario = document.getElementById('usuario');
  const direcciónEmail = document.getElementById('email');
  const numeroTelefono = document.getElementById('telefono');
  if (usuario.value === "") {
    alert("Por favor, escribe tu nombre de usuario.");
    usuario.focus();
    return false;
  }

  if (email.value === "") {
    alert("Por favor, escribe tu correo electrónico");
    email.focus();
    return false;
  }
  
  if (telefono.value === "") {
    alert("Por favor, escribe tu número de teléfono");
    telefono.focus();
    return false;
  }
  return true;


//submitBtn.addEventListener('click', validate);
}
