def stock_picker(arr)
  diff, buy, sell = 0
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      if (arr[j] - arr[i] > diff)
        diff = arr[j] - arr[i]
        buy = i
        sell = j
      end
    end
  end
  [buy, sell, "#{arr[sell]} - #{arr[buy]} = #{diff}"]
end

p stock_picker([17,3,6,9,15,8,6,1,10])