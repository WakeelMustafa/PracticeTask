require('./task_1')
require('./task_2')
require('./task_3')
begin
  #Creating Object of Task1
  object = Task1.new
  puts object.frequency_count([1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33])
  #Creating Object of Task2
  object = Task2.new
  puts 'Running Sum'
  object.array_sum
  #Creating Object of Task3
  object = Task3.new
  puts 'Enter Length of Password'
  length = gets.to_i
  object.check_password_length(length)
end
