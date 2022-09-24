# Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.

# Example

# For statues = [6, 2, 3, 8], the output should be
# solution(statues) = 3.

# Ratiorg needs statues of sizes 4, 5 and 7.

statues = [6, 2, 3, 8]

def solution(statues_input)
    sorted_statues = statues_input.sort
    index_of_statues_list = 0   
    missing_statues = Array.new
    loop do

        if sorted_statues[index_of_statues_list+1].to_i - sorted_statues[index_of_statues_list].to_i > 1
            a = (sorted_statues[index_of_statues_list]+1.to_i..sorted_statues[index_of_statues_list+1].to_i-1).to_a
            puts a
            a.each do |i|
                a[i]
            end
            missing_statues<<a
            puts "run #{index_of_statues_list}"
        end
                 
       if  index_of_statues_list>=statues_input.length
            
            break
        end
        index_of_statues_list+=1
    end
    puts "The list of statues are #{sorted_statues}."
    puts "The missing statuess are #{missing_statues.flatten}."
    puts "There are #{missing_statues.flatten.length} statues missing."
 return missing_statues

end

solution(statues)

puts "finnaly"

# alternative solution

# def solution(statues)
#     statues.max - statues.min - statues.size + 1
# end