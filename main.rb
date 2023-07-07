require( './task_1' )
require( './task_2' )
begin
object = Task1.new
puts object.frequency_count([1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33])
object = Task2.new
puts 'Running Sum'
object.array_sum
end
