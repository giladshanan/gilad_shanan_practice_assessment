require_relative 'genie'

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

# Q6
test_wishes = ["impeachment, soon please!", "a week hiking, swimming and camping in the mountains", "good health, happiness, and friendship", "peace and justice. now.", "a good harvest", "we come together to curb climate change"]

test_wishes.each do | wish |
  genie1.grant_wish(wish)
end

# Q7
genie1.display_wish_history

# Q8
genie1.favorite_wish

# Psuedocode:
# Q6
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

# Q8
# input - hash of submitted wishes
# create an array of EACH wish
# count the vowels in EACH wish with { |item| block } → int
# assign the count as a value in a new hash
# return the key from the highest value with `a.key(a.values.max)`
# output - string with the most vowels