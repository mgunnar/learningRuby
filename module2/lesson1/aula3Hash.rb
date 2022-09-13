# myHash = { 
#     a:1,
#     b:2,
#     c:3,
#     d:4,
# }

# p myHash

# myHash [:a] = "Gunnar";
# myHash [:c] = "Ruby";
# myHash [:e] = "To the top.";

# # p myHash

# myHash.each {|some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"}
# p myHash

# p myHash.select{|k, v| v.is_a?(String)}
# p myHash.each{|k, v| myHash.delete (k) if v.is_a?(String)}

myDetails = {'name' => 'URAHARA KISUKE', 'favcolor' => 'GREEN'}

 myDetails['favcolor']
 myHash = {a: 1, b: 2, c: 3, d: 4}
 myHash[:d] = 'looking for a complication'
 myHash.delete(:d)
p myHash.each {|someKey, someValue| puts "A chave é #{someKey} o valor eh #{someValue}"}

p myHash.select {|k,v|v.even?}