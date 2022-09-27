function doFibon(input:number){
    let    sequence = [1,1];
    for (let index = 1; sequence[index]<input; index++) 
        sequence[index+1] = sequence[index] + sequence[index-1];  
    sequence.pop();
    console.log ("The fibonacci sequence until the input number is: ");
    console.log(sequence);
}
doFibon(1000);