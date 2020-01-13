class Calculator

  def add(num_1, num_2)
    num_1 + num_2
  end

  def subtract(num_1, num_2)
    num_1 - num_2
  end

  def multiply(num_1, num_2)
    num_1 * num_2
  end

  def divide(num_1, num_2)
    if num_2 == 0
      puts "Cannot divide by 0"
    else
      num_1 / num_2
    end
  end

end
