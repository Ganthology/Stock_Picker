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
  current_max = stock_list.first
  current_min = stock_list.first
  max_index = 0
  min_index = 0
  stock_list.each_with_index do |stock,  index|
    if stock > current_max && index >= max_index
      current_max = stock
      max_index = index
    elsif stock < current_min && index <= min_index
      current_min = stock
      min_index = index
    end
  end
  [current_max, current_min]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=>[1,4]