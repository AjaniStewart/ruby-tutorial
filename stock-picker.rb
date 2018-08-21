def stock_picker prices
    highest_profit = [0,0]
    prices.size.times do |buy_time|
        (prices.size - buy_time).times do |sell_time|
            if (prices[sell_time + buy_time] - prices[buy_time])\
                > (prices[highest_profit[1]] - prices[highest_profit[0]])
                highest_profit = [buy_time , sell_time + buy_time]
            end
        end
    end
    highest_profit
end
