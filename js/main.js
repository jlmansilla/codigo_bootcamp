

/*variables 
function varTest(){
    var x = 10;
    if (true){
        var x = 15;
        document.write(x ,'\n');
    }
    document.write (x ,"\n");   
}

function letTest(){
    let z = 20;
    if (true){
        let z = 25;
        document.write(z ,'\n');        
    }
    document.write(z ,'\n');   
}
varTest()
letTest() */
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
} 


        function ventanaSecundaria (URL){ 
           window.open(URL,"ventana1","width=400,height=300,scrollbars=NO") 
        } 
        
      
        function ventanaMapa (URL){ 
           window.open(URL,"ventana1","width=400,height=300,scrollbars=NO") 
        } 
        
         
    
