class Genie
  attr_accessor :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
    @in_lamp = true
  end

  def enter_lamp
    @in_lamp = true
  end

  def exit_lamp
    @in_lamp = false
  end

end

genie1 = Genie.new("Bob", 1234)
genie2 = Genie.new("Karen", 3945)
genie3 = Genie.new("Susan", 509234)

# Q2
# p genie1
# p genie2
# p genie3

# Q3
# genie1.name= "Joe"
# p genie1.name
# p genie1.age
# genie1.age= 5678 #NoMethodError

# Q4
# p genie1
# p genie1.exit_lamp
# p genie1.enter_lamp

