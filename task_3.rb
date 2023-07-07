$chars = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('#'..'&').to_a + (':'..'?').to_a
class Task3
  def random_password(length)
    password = ''
    (0..length).each do
      password += $chars[rand($chars.size)]
    end
    password
  end

  def check_password_length(length)
    if length > 7
      pass = random_password(length)
      verify_password(pass)
    else
      puts 'Please Enter the length of 7+ Digits'
    end
  end

  def verify_password(pass)
    flag = false
    File.foreach('input.csv') { |line| flag = line == pass }
    if flag
      puts 'Password is not Unique'
    else
      puts 'password is unique'
      write_password(pass)
    end
  end

  def write_password(pass)
    afile = File.new('input.csv', 'a')
    if afile
      afile.syswrite("#{pass}\n")
    else
      puts 'Unable to open file!'
    end
  end
end
