class Task1
  def frequency_count(array)
    hash = Hash.new
    array.each { |key| hash[key] =+ 1 }
    hash
  end
end
