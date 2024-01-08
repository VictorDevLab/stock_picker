def stock_picker(prices)
max_profit = 0
best_days = nil

prices.each_with_index do |buy_price, buy_day|
    (buy_day + 1...prices.length).each do |sell_day|
        sell_price = prices[sell_day]
        current_profit = sell_price - buy_price

    if current_profit > max_profit
        max_profit = current_profit
        best_days = [buy_day, sell_day]
    end
    end
end

 p best_days
end


stock_picker([17,3,6,9,15,8,6,1,10])