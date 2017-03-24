require 'pry'
require 'pp'
def check_solution(brutal_force_array)
  nsum = 0
  array_a = []
  array_b = []
  for i in 0..(brutal_force_array.size-1)
    if nsum < 330
        nsum += brutal_force_array[i]
        array_a << brutal_force_array[i]
    else
        break
    end
  end
  puts nsum
  return false if nsum != 330

  second_part_array = brutal_force_array.drop(i)
  # nsum = 0
  # for j in 0..(second_part_array.size-1)
  #     if nsum < 480
  #         nsum += second_part_array[j]
  #         array_b << second_part_array[j]
  #     else
  #         break
  #     end
  # end

  # return false if nsum != 480

  "#{array_a} #{second_part_array}"
end

#arr = [60,45,30,45,60,60,45,45,30]
arr = [60,45,30,45,60,60,45,45,30,45,60,60,45,30,30,60,30,30].sort!

arrays = arr.permutation

arrays.each do |array|
  solution = check_solution(array)
	if solution
    pp solution
  end
end
