def bubble_sort(arr)
  j = arr.length - 2

  #debug1
  loops = 0

  while j >= 0
    flag = false
    
    #debug1
    loops += 1

    for i in 0..j
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp

        flag = true
      end
    end
    break if flag == false

    j -= 1
  end

  #debug1
  puts "number of loops = #{loops}"

  arr
end

arr = []
puts "Enter integers to be sorted, and enter 0 when you're done: "
input = gets.chomp
input = input.include?(".") ? input.to_f : input.to_i
while input != 0
  arr.push(input)

  input = gets.chomp
  input = input.include?(".") ? input.to_f : input.to_i
end

puts bubble_sort(arr)