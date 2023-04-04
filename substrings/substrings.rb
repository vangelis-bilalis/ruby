def substrings(text, dict)
  arr = text.split(" ")
  
  found = Hash.new

  arr.each do |word|
    dict.each do |valid_word|
      if word.include?(valid_word)
        if found.key?(valid_word)
          found[valid_word] += 1
        else
          found[valid_word] = 1
        end
      end
    end
  end

  found
end

puts "Enter text: "
text = gets.chomp.downcase

dict = Array.new

puts "Enter dictionary: "

input = gets.chomp.downcase
while input != "end"
  dict.push(input)
  input = gets.chomp.downcase
end

dict = dict.uniq

puts substrings(text, dict)