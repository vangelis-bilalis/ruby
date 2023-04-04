def caesar_cipher(str, shift)
  arr = str.split("")

  shift = shift % 26;

  arr = arr.map do |el|
    num = el.ord
    total = num + shift

    if num >= 97 && num <= 122
      limit = 122   
    elsif num >= 65 && num <= 90
      limit = 90  
    end

    if (num >= 97 && num <= 122) || (num >= 65 && num <= 90)
      el = total <= limit ? total.chr : (total - 26).chr
    else
      el
    end
  end

  arr.join
end

puts "Enter text for encoding: "
str = gets.chomp

puts "Enter shift: "
shift = gets.chomp.to_i

puts caesar_cipher(str, shift)