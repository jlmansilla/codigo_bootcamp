const weekday = ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
const colors = ["blue","navy","green","olive","yellow","lime","magenta"];
function mostrarFecha(){
    let fecha=new Date();
    let dia=weekday[fecha.getDay()];

    alert('Hoy es '+ dia +' ' + fecha.getDay() + ' del ' + fecha.getMonth() + ' de ' + fecha.getFullYear() + ' y son las ' + fecha.getHours() + ' Horas, ' + fecha.getMinutes() + ' minutos con ' + fecha.getSeconds() + ' segundos');
}
window.onload= mostrarFecha();

function colorLetras(){
    let titulo = document.getElementById("titulo").innerHTML; 
    let largo = titulo.length;
    for (i=0; i<largo; i++){
        document.getElementById("titulo")=titulo;
        
    }

}
colorLetras()