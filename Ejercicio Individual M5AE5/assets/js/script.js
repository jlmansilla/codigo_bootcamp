const weekday = ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
const colors = ["blue","navy","green","olive","yellow","lime","magenta", "purple", "cyan", "brown", "black", "gray", "teal", "lime", "blue","navy","green","olive","yellow","yellow","lime","magenta", "purple", "cyan", "brown", "black", "gray", "blue","navy","green","olive","yellow","lime","magenta", "purple", "cyan", "brown", "black", "gray", "teal", "lime", "blue","navy","green","olive","yellow","yellow","lime","magenta", "purple", "cyan", "brown", "black", "gray", "blue","navy","green","olive","yellow","yellow","lime","magenta", ];

function mostrarFecha(){
    let fecha=new Date();
    let dia=weekday[fecha.getDay()];

    alert('Hoy es '+ dia +' ' + fecha.getDate() + ' del ' + (fecha.getMonth()+1) + ' de ' + fecha.getFullYear() + ' y son las ' + fecha.getHours() + ' Horas, ' + fecha.getMinutes() + ' minutos con ' + fecha.getSeconds() + ' segundos');
    
}
window.onload= mostrarFecha();

colorLetras();

function restaFechas(){
    let actual = new Date("06/05/2022"); 
    let d = new Date("12/31/2022");
    let difference= Math.abs(d-actual);
    let days = Math.round(difference/(1000 * 3600 * 24));
    let hours = days * 24;
    let minutes = hours * 60;
    let seconds = minutes * 60;
    let resultado =(days + " días ó " + hours + " horas ó " + minutes + " minutos ó " + seconds + " segundos"); 
    return resultado

}


function colorLetras(){
    let titulo ="Tiempo Restante";
    let parrafo ="para fin de año faltan:";
    let colores="";
    let colores1="";
    let colores2="";
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

      let largo2=restaFechas().length;
      for (i=0; i<largo2; i++){
        letra = restaFechas()[i];
        letra= letra.fontcolor([colors[i]]);
        colores2=colores2 + letra;
        
      }

      document.getElementById("titulo").innerHTML = colores;
      document.getElementById("parrafo").innerHTML = colores1;
      document.getElementById("fecha").innerHTML = colores2;
}


