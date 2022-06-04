const weekday = ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
const colors = ["blue","navy","green","olive","yellow","lime","magenta", "purple", "cyan", "brown", "black", "gray", "teal", "lime" ];

function mostrarFecha(){
    let fecha=new Date();
    let dia=weekday[fecha.getDay()];

    alert('Hoy es '+ dia +' ' + fecha.getDay() + ' del ' + fecha.getMonth() + ' de ' + fecha.getFullYear() + ' y son las ' + fecha.getHours() + ' Horas, ' + fecha.getMinutes() + ' minutos con ' + fecha.getSeconds() + ' segundos');
}
window.onload= mostrarFecha();

function colorLetras(){
    let titulo ="Tiempo Restante";
    let parrafo ="para fin de año faltan:";
    let colores="";
    let colores1="";
    let largo = titulo.length;
    for (i=0; i<largo; i++){
        letra = titulo[i]
        letra= letra.fontcolor([colors[i]]);
        colores=colores + letra;
        
      }
      let largo1=parrafo.length;
      for (i=0; i<largo1; i++){
        letra = parrafo[i]
        letra= letra.fontcolor([colors[i]]);
        colores1=colores1 + letra;
        
      }
      

      document.getElementById("titulo").innerHTML = colores;
      document.getElementById("parrafo").innerHTML = colores1;
}
colorLetras()
function restaFechas(){
        let actual = new Date("06/05/2022"); 
        let d = new Date("12/31/2022");
        let difference= Math.abs(d-actual);
        let days = difference/(1000 * 3600 * 24)
        
document.getElementById("fecha").innerHTML = days + " días";

}
restaFechas()