function solution(sequence) {
  let numbersRemoved = 0;
  let index = 0;
  let sequenceSize = sequence.length;
  for (index = 0; index < sequenceSize; index++) {
    if (sequence[index] >= sequence[index + 1] && index <= sequenceSize)
      numbersRemoved++;
    if (index != 0 && sequence[index - 1] > sequence[index + 1])
      numbersRemoved++;
  }
  return numbersRemoved == 1 ? true : false;
}
