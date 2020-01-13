require 'time'

class Greeting

  MATZ_BIRTH_YEAR = 1964

  def greet
    puts "What is your name?"
    name = get_name
    puts "Hello #{name}, how old are you?"
    age = get_age
    display_age_difference_from_matz(age)
  end

  def get_name
    name = gets.chomp
    while name.empty?
      puts "I didn't get that. What is your name?"
      name = gets.chomp
    end
    name
  end

  def get_age
    age = gets.chomp
    while !valid_age?(age)
      puts "That's not really your age. How old are you, for real?"
      age = gets.chomp
    end
    age
  end

  def valid_age?(age)
    age = age.to_i
    age > 0 && age < 120
  end

  def display_age_difference_from_matz(age)
    age_difference_from_matz = calculate_age_difference(age)
    if age_difference_from_matz < 0
      puts "You're #{age_difference_from_matz.abs} years younger than Yukihiro \"Matz\" Matsumoto, the lead designer of Ruby!"
    elsif age_difference_from_matz > 0
      puts "You're #{age_difference_from_matz} years older than Yukihiro \"Matz\" Matsumoto, the lead designer of Ruby!"
    else
      puts "Woah, you're the same age as Yukihiro \"Matz\" Matsumoto, the lead designer of Ruby!"
    end
  end

  def calculate_age_difference(age)
    birth_year = Time.now.year - age.to_i
    MATZ_BIRTH_YEAR - birth_year
  end
end

Greeting.new.greet
