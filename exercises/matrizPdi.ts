
function somarElementosDiagonal(matriz) {
    let soma = 0;
    for (var i = 0; i < matriz.length; i++) {
        for (var j = 0; j < matriz[0].length; j++) {
            if (i==j) {
                soma += matriz[i][j];
                console.log(soma)
            }
        }
    }
    return soma;
}

let matriz = [[1,4,3],
              [1,4,3],
              [1,4,3]];

console.log(somarElementosDiagonal(matriz)); 