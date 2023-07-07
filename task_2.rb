class Task2
  def array_sum
    arr = Array[1, 2, 3, 4, 5]
    sum = 0
    (0..arr.length - 1).each do |i|
      sum += arr[i].to_i
      puts sum
    end
  end
end
