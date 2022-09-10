#SimpleCalculator
#TODO fix the keepCalculatorAlive method
def line(lineSize,char)
    lineSize.times{ print char} 
    puts ""
end

def keepCalculatorAlive()
    puts "Do you want to do a new operation? Insert 'y' for YES and 'n' for NO:"
    response = gets.chomp();
    
    iterator = 0
            while (iterator<1)
    
                case response
                when "y"
                    calculator()
                when "n"
                    iterator = 1
                    break puts "Goodbye."
                else
                    break puts "Insert y or n. "

                
            end
        
    end
    
    end

def insertTwoNumbers()
    numbersToSum = Array.new ;

    puts "Insert first number:"
    numbersToSum[0] = gets.chomp();
    puts "Insert second number:"
    numbersToSum[1] = gets.chomp();

    numbersToSum[0].to_i
    numbersToSum[1].to_i

    result = [numbersToSum[0],numbersToSum[1]]
    line(50,"=")
    return result
end

def sumTwoGivenNumbers ()
    puts " "
    line(50,"+")
    puts "First number inputed plus the second number inputed"
    line(50,"+")
    numbersToSum = insertTwoNumbers()
    
    firstNumber = numbersToSum[0]
    secondNumber = numbersToSum[1]

    firstNumber = firstNumber.to_f
    secondNumber =  secondNumber.to_f
    result = firstNumber + secondNumber

    puts ("#{firstNumber} + #{secondNumber} equals to: #{result}") 
    puts "End of operation."
    keepCalculatorAlive()
end 

def subsTwoGivenNumbers()
    puts " "
    line(50,"-")
    puts "First number inputed minus the second number inputed"
    line(50,"-")
    numbersToSum = insertTwoNumbers()
    
    firstNumber = numbersToSum[0]
    secondNumber = numbersToSum[1]

    firstNumber = firstNumber.to_f
    secondNumber =  secondNumber.to_f
    result = firstNumber - secondNumber

    puts ("#{firstNumber} - #{secondNumber} equals to: #{result}") 
    puts "End of operation."
    keepCalculatorAlive()
end 

def multiplyTwoGivenNumbers()
    puts " "
    line(50,"*")
    puts "First number inputed times the second number inputed"
    line(50,"*")
    numbersToSum = insertTwoNumbers()
    
    firstNumber = numbersToSum[0]
    secondNumber = numbersToSum[1]

    firstNumber = firstNumber.to_f
    secondNumber =  secondNumber.to_f
    result = firstNumber * secondNumber

    puts ("#{firstNumber} x #{secondNumber} equals to: #{result}") 
    puts "End of operation."
    keepCalculatorAlive()
end 

def divideTwoGivenNumbers()
    puts " "
    line(50,"/")
    puts "First divided inputed times the second number inputed"
    line(50,"/")
    numbersToSum = insertTwoNumbers()

    firstNumber = numbersToSum[0]
    secondNumber = numbersToSum[1]

    firstNumber = firstNumber.to_f
    secondNumber =  secondNumber.to_f
    result = firstNumber / secondNumber

    puts ("#{firstNumber} / #{secondNumber} equals to: #{result}") 
    puts "End of operation."
    keepCalculatorAlive()

end 

def calculator()
line(80,'=')
puts ("Simple calculator 1.0 - 10th September 2022")
line(80,'=')
puts ("This program can do sum, substratction, multiplication and division:")
line(80,'*')
puts(" ")
puts("Choose one operation:")
puts ("1 - sum") 
puts ("2 - substraction")
puts ("3 - multiplication")  
puts ("4 - division")

operation = gets.chomp();

case operation 
    when "1"
    sumTwoGivenNumbers()
    when "2"
    subsTwoGivenNumbers()
    when "3"
    multiplyTwoGivenNumbers()
    when "4"
    divideTwoGivenNumbers()
    else
        puts "#{operation} is not an valid option. Choose a number between 1-4."

end

end

calculator()

