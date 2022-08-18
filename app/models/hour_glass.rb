class HourGlass < ApplicationRecord
  def single_hour_glass_sum(arr, init_x, init_y)
    top_left =     arr[init_y][init_x]
    top_mid =      arr[init_y][init_x + 1]
    top_right =    arr[init_y][init_x + 2]
    mid =          arr[init_y + 1][init_x + 1]
    bottom_left =  arr[init_y + 2][init_x]
    bottom_mid =   arr[init_y + 2][init_x + 1]
    bottom_right = arr[init_y + 2][init_x + 2]

    top_left + top_mid + top_right + mid + bottom_left + bottom_mid + bottom_right
  end

  def max_hour_glass_sum(arr)
    # Write your code here
    sums = []
    for y in 0...(arr.length - 2) do
       for x in 0...(arr.first.length - 2) do
        sums << single_hour_glass_sum(arr, x, y)
       end
    end
    sums.max
  end
end
