# Take some kind of input from a person.
# Change it.
# Print out something to show how it changed.

print "How old are you?"
age = gets.chomp.to_i
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight}"
