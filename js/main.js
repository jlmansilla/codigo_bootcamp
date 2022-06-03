

//variables 
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
letTest()