class Song
  def initialize(lyrics)
      @lyrics = lyrics
  end
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end
##Assign those lyrics to variables
# happy_bday_lyrics = ["Happy birthday to you",
#   "I don't want to get sued",
#   "so I'll stop right there."]
#
# hump_ty_lyrics = ["what is the matter?",
#   "what shoudl i say here"]
#
# yellow_lemon_tree = ["I am driving so fast",
# "I am driving so far",
# "but nothing has ever happened",
# "and I wonder?"]

##add those lyrics in an 2D array
# lyrics = [["Happy birthday to you",
#    "I don't want to get sued",
#    "so I'll stop right there."],
#    ["what is the matter?",
#   "what shoudl i say here"],
#   ["I am driving so fast",
#   "I am driving so far",
#   "but nothing has ever happened",
#   "and I wonder?"]]
#
# happy_bday = Song.new(lyrics[0])
# hump_ty = Song.new(lyrics[1])
# yellow_lemon_tree = Song.new(lyrics[2])

##assign those lyrics in hash

lyrics = {'happy_bday' => ["Happy birthday to you", "I don't want to get sued", "so I'll stop right there."],
          'yellow_lemon_tree' => ["I am driving so fast", "I am driving so far", "but nothing has ever happened", "and I wonder?"],
          'hump_ty' => ["what is the matter?", "what shoudl i say here"]
}

happy_bday = Song.new(lyrics['happy_bday'])
hump_ty = Song.new(lyrics['yellow_lemon_tree'])
yellow_lemon_tree = Song.new(lyrics['hump_ty'])

#calling the method
happy_bday.sing_me_a_song()
hump_ty.sing_me_a_song()
yellow_lemon_tree.sing_me_a_song()
