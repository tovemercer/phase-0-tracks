puts "What would you like to decrypt?"
user_imput = gets.chomp

def decrypt(user_imput)

abc = "abcdefghijklmnopqrstuvwxyz"

id = 0
while id < user_imput.length
	findabc = abc.index(user_imput[id])
	user_imput[id] = abc[findabc -1]
	id += 1
end

end

decrypt(user_imput)
puts user_imput