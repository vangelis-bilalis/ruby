def bubble_sort(arr)
  j = arr.length - 2

  while j >= 0
    for i in 0..j
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
      end
    end
    j -= 1
  end

  arr
end

arr = []
puts "Enter integers to be sorted, and enter 0 when you're done: "
input = gets.chomp
input = input.include?(".") ? input.to_f : input.to_i
while input != 0
  puts "current input:"
  puts input

  arr.push(input)

  puts "current array"
  puts arr

  input = gets.chomp
  input = input.include?(".") ? input.to_f : input.to_i
end

puts bubble_sort(arr)