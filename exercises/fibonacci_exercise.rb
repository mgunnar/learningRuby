def do_fibon()
    
    puts "Enter the number that will be the limit for the fibonacci sequence."
    input = gets()

    sequence = [1,1]
    index = 1

    loop do
        if sequence[index].to_i> input.to_i
            break
        end
            sequence[index+1] = sequence[index].to_i + sequence[index-1].to_i
            index +=1
    end
    puts "The fibonacci sequence until the input number is: #{sequence}."
end

do_fibon()