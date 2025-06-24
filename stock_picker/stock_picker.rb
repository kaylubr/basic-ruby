def stock_picker(stocks)
  min_index = 0
  max_index = stocks.length - 1
  stocks.each_with_index do |num, index|
    if num < stocks[min_index]
      next if index == stocks.length - 1 || index > max_index
      min_index = index
    end
    if num > stocks[max_index]
      next if index == 0 
      max_index = index
    end
  end
  [min_index, max_index]
end
