#SimpleCalculator
def line(lineSize,char)
    lineSize.times{ print char} 
    puts ""
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

end 

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

# sumTwoGivenNumbers()
# subsTwoGivenNumbers()
multiplyTwoGivenNumbers()
divideTwoGivenNumbers()





# def divideTwoGivenNumbers (firstNumber,secondNumber)
#     return firstNumber - secondNumber
# end