function solution(sequence) {
  let numbersRemoved = 0;
  let index = 0;
  let sequenceSize = sequence.length;
  for (index = 0; index < sequenceSize; index++) {
    if (sequence[index] >= sequence[index + 1] && index <= sequenceSize)
      numbersRemoved++;
    if (index > 1 && sequence[index - 2] >= sequence[index] && sequence[index-1] >= sequence[index+1]){
      numbersRemoved++;
      }
  }
  return numbersRemoved == 1 ? true : false;
}

let sequence3 = [1, 2, 1, 2]; //false
let sequence10 = [1, 2, 3, 4, 5, 3, 5, 6]; //false
let sequence11 = [40, 50, 60, 10, 20, 30]; //false

console.log('sequece 3 '+ solution(sequence3));
console.log('sequece 10 '+ solution(sequence10));
console.log('sequece 11 '+ solution(sequence11));