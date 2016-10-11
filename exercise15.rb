#Reading Files
#get filename from the prompt
#filename = ARGV.first
puts "What is the file name?"
filename = $stdin.gets.chomp
#open a file
txt = open(filename)
puts "Here's your file #{filename}:"
#read from a file
print txt.read
txt.close()

# print "Type the filename again:"
# file_again = $stdin.gets.chomp
#
# txt_agian= open(file_again)
# print txt_again.read
