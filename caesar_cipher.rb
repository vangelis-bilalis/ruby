def caesar_cipher (str, shift)
  arr = str.split("")

  shift = shift % 26

  arr = arr.map do |el|
    if (el.ord >= 97 && el.ord <= 122)
      if (el.ord + shift <= 122)
        el = (el.ord + shift).chr
      else
          el = (el.ord + shift - 26).chr
      end
    elsif (el.ord >= 65 && el.ord <= 90)
      if (el.ord + shift <= 90)
        el = (el.ord + shift).chr
      else
          el = (el.ord + shift - 26).chr
      end
    else
    	el
    end
  end
  
  arr.join
end

puts "Enter the text that you want to encode: "
str = gets.chomp

puts "Enter the desired shift: "
shift = gets.chomp.to_i

puts caesar_cipher(str, shift)
