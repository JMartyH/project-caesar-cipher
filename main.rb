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
  p cipher.join
end

caesar_cipher("hello", 12)



