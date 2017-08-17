class Genie
  attr_accessor :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
    @in_lamp = true
    @submitted_wishes = {}
  end

  def enter_lamp
    @in_lamp = true
  end

  def exit_lamp
    @in_lamp = false
  end

  def grant_wish(wish)
    exit_lamp
    wish_count = 0
    @submitted_wishes.each  do | wish_key, value |
      if @submitted_wishes.length == 0
        wish_count += 1
      elsif @submitted_wishes[wish_key]
        wish_count += 1
      end
    end
    if wish_count < 3
      @submitted_wishes[wish]= true
      p "Your wish of #{wish} has been granted!"
    else
      @submitted_wishes[wish]= false
      p "Sorry, I've already granted three wishes today!"
    end
    enter_lamp
    return @submitted_wishes[wish]
  end

  def display_wish_history
    @submitted_wishes.each { | key, value | p "Your wish, '#{key}' was #{value ? "granted" : "not granted" }." }
  end

end

# Driver code
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

# Q5
# input - string
    # exit lamp
    # IF submitted_wishes has less than three true value entries
      # add string to submitted_wishes, set value of wish to true
      # print "Your wish of 'string' has been granted!"
    # ELSE
      # add string to submitted_wishes, set value of wish to false
      # print "Sorry, I've already granted three wishes today!"
    # enter lamp
    # output - true if wish granted
test_wishes = ["impeachment, soon please!", "a week hiking, swimming and camping in the mountains", "good health, happiness, and friendship", "peace and justice. now.", "a good harvest", "we come together to curb climate change"]

test_wishes.each do | wish |
  genie1.grant_wish(wish)
end

# Q6
genie1.display_wish_history
