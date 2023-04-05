def stock_picker(prices)
  diffs = {}

  for i in 0..prices.length - 2
    for j in i + 1..prices.length - 1
      diffs[[i, j]] = prices[j] - prices[i]
    end
  end

  best_diff = 0

  diffs.values.each do |diff|
    if diff > best_diff
      best_diff = diff
    end
  end

  puts "The best day to buy is #{diffs.key(best_diff)[0]} and the best day to sell is #{diffs.key(best_diff)[1]}"
end

prices = []

puts "Enter prices: "
price = gets.chomp.to_i
while price > 0 do
  prices.push(price)
  price = gets.chomp.to_i
end

stock_picker(prices)