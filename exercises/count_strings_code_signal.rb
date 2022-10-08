def count_strings_array(array)
    array.each { |x| x.count }
end

arrayx = ['a', 'sic', 'parvis', 'magna']

tesste = count_strings_array(arrayx)
puts tesste