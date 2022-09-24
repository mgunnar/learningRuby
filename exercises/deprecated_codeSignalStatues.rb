def solution(statues)
    sorted_statues = statues.sort
    length_s = sorted_statues.length
      puts 'there are ' + length_s.to_s + ' stautes.'
      puts "the statues are #{sorted_statues}"
     missing_statues = []
     index = 0
     check_diff = 0

  loop do
    if index<length_s
        check_diff = sorted_statues[index+1].to_i - sorted_statues[index].to_i
    
        #  puts check_diff
            if check_diff>1
                k = sorted_statues[index];
                check_diff.times do
                    
                    missing_statues[index]=sorted_statues[index].to_i+k
                # puts "there is missing a statue number: #{missing_statues[index].to_i}"
                end
            end
            
            index+=1
    
            if index > length_s
                break       # this will cause execution to exit the loop
            end
        end
    end 
    puts missing_statues

end



def check_statues_non_negative(statues)
    i = 0
    loop do
        if statues[i]<0
            puts "One of the statues has a negative size as value. #{statues[i]}"
            puts "The list of statues are #{statues}."
            break
        end
        i+=1
        if statues.length >=i
            puts "The list of statues are #{statues}."
            break
        end
    end
    return exit
end

statues = [100,50,10,20]
solution(statues)       
