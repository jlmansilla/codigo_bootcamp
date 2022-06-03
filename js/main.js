

//variables 
function varTest(){
    var x = 10;
    if (true){
        var x = 15;
        document.write (x "\n");        
    }
    document.write (x "\n");   
}

function letTest(){
    let y = 20;
    if (true){
        var y = 25;
        document.write(y "\n");        
    }
    document.write(y "\n");   
}
varTest()
letTest()