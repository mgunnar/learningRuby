
def solution(input_matrix)
  
    sumMatrix = 0;
  
    input_matrix.transpose.each { |rows_elements| rows_elements.each { |column_elements| column_elements > 0 ? sumMatrix+= column_elements : break } }
  
    return sumMatrix
end


def imprimir(input_matrix)
    sumMatrix = 0;
  
    input_matrix.transpose.each { |rows_elements| 
    puts "#{rows_elements}"
    rows_elements.each  { |column_elements| column_elements > 0 ? sumMatrix+= column_elements : break } }
end

  matrix =   [[0,1,1,2], [0,5,0,0], [2,0,3,3]]

#   puts solution(matrix)
  puts imprimir(matrix)