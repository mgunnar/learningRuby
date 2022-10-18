def count_strings_array(array)
    newarray = []
        array.each { |x| newarray.insert(x.to_i,x.size) }
            array.each do |y| 
                puts array
            end
            newarray.delete_at
        return newarray
    end
    


arrayx = [ "sic", "parvis", "magna"]
teste = count_strings_array(arrayx)
puts teste
