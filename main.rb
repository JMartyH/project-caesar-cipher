original_input = []

def caesar_cipher(user_input, shift_count)
  cipher = []
  original_input = user_input.bytes
  original_input.each do |char|
    for i in 1..shift_count do
      if char == 122
        char = 97
        next
      elseif char == 90
        char = 65   
        next     
      end
      char+=1
    end
    cipher.push(char.chr)
  end
  puts "Your cihper is:\n#{cipher.join}"
end

puts "Please enter the string you wan to cipher: "
input = gets.chomp()

puts "Please enter how many times you want to shift: "
shift_count = gets.chomp()

caesar_cipher(input, shift_count.to_i)



