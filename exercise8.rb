# Exercise 8: Printing, Printing
# I will now show you how to create a format string,
# but rather than using variables, use values by their names.
# Some of this is a bit more advanced,
# but don't worry you'll learn what all of these mean later.
# Just type this in, make it work,
# and write a comment above each line translating it to English.

formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
