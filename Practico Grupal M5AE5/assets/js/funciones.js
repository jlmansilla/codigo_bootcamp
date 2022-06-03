function validar(){
const btnEnviar = document.getElementById('btn-enviar');

  const nombreFormulario = document.getElementById('formulario')
  const nombreDeUsuario = document.getElementById('usuario');
  const direcciónEmail = document.getElementById('email');
  const numeroTelefono = document.getElementById('telefono');
  if (usuario.value === "") {
    alert("Por favor, escribe tu nombre de usuario.");
    nombreDeUsuario.focus();
    return false;
  }

  if (email.value === "") {
    alert("Por favor, escribe tu correo electrónico");
    direcciónEmail.focus();
    return false;
  }
  
  if (telefono.value === "") {
    alert("Por favor, escribe tu número de teléfono");
    numeroTelefono.focus();
    return false;
  }
  return true;



}
