# first idea: loop through the list to find min max
# current min and current max
# if num < current min && index correct, then min = num
# if num > current max && index correct, then max = num

=begin
current_max = array[0]
current_min = array[0]
max_index = 0
min_index = 0
for loop:
  if array[i] > current_max && i >= current_max
    update current_max
    update max_index
  elsif array[i] < current_mix && i <= current_min
    update current_min
    update min_index
  continue
=end

def stock_picker(stock_list)
  current_min = 0
  max_index = 1
  min_index = 0
  # max_profit = 0
  # buy_sell = 90
  stock_list.each_with_index do |stock,  index|
    # update current min
    if stock < stock_list[current_min]
      current_min = index
    end
    # update index based on max profit
    if stock_list[max_index] - stock_list[min_index] < stock - stock_list[current_min]
      max_index = index
      min_index = current_min
    end
  end
  [min_index, max_index]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
#=>[1,4]