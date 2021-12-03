def stock_picker(stocks)
    profit_days = stocks.first(stocks.length - 1).each_with_index.map do |price, i|
        stocks.last(stocks.length - i - 1).max - price
    end
    buy = profit_days.index(profit_days.max)
    [buy, stocks.index(stocks.last(stocks.length - buy - 1).max)]
end
stocks = [17,3,6,9,15,8,6,1,10]
p stock_picker(stocks)