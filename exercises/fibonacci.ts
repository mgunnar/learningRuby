function do_fibon(input:number){

    let    sequence = [1];
    for (let i =1;i<input;i++) {
    sequence[i] = 0;
    sequence.pop()}

              console.log(sequence);
        
    for (let index = 1; index<=input; index++){ 
        if (sequence[index] > input){
            console.log("maior que input");
            break;
        } else {
         let x = sequence[index] + sequence[index-1];
          sequence[index+1] = x;
          console.log(index);          }
          //console.log(sequence[index]);
        }

     sequence.shift();
    // sequence.pop;
    return console.log ("The fibonacci sequence until the input number is: "+sequence);
}

do_fibon(10);