#Go Fish Game
#There are 2 players with 7 cards each


#Tasks
#Task 1 : Storing the 52 cards in harsh
#Task 2 : Shuffling the cards
#Task 3 : Dealing 7 cards each to player 1 and player 2
#Game starts
#Task 4 : Comparing the cards' numbers
#Task 5 : Saving same numbers with different faces in a book
#Same numbers from different faces, min. 4 cards and that forms a book#

#Task 4 : Player 1 checks the cards and asks player 2 certain card which player 1 has
#Task 5 : Player 2 will check if he has the card asked by player 1, if so, he has to give his card to player 1,
#Task 6: Else player 1 takes one card from the deck
#Task : Comparing one card from the deck with player 1 's  cards
#Task : If he has it, he keeps those matching cards in a book ( 4 cards min.)


#Task 1 : Storing the 52 cards in two-dimensional array
def create_cards ()
  cards_faces = ['Hearts','Clubs','Spades','Diamonds']
  cards_nums = ['King','Queen','Jack','Ace','2','3','4','5','6','7','8','9','10']
  cards = []

  cards_faces.each do |face|
    cards_nums.each do |num|
    	cards << [face,num]
    end
  end

  return cards
end


#Task 2 : Shuffling the cards
def shuffle_cards()
    create_cards.shuffle
end

#Task 3 : Dealing 7 cards each to player 1 and player 2
def deal_cards(player, num_cards=7, cards)

    player_cards=[]
    starting = (player[5]-1)*num_cards
    ending = starting + (num_cards - 1)

    for i in starting..ending
        player_cards << cards.pop
    end
    return player_cards
end

#Task 4: Comparing the cards
def compare_cards_nums (selected_card, remaining_cards)

    matching_cards=remaining_cards.select{|remaining_card| selected_card == remaining_card[1]}
    remaining_cards = remaining_cards - matching_cards

    return matching_cards, remaining_cards

end

def save_in_book ()

end

cards = shuffle_cards
player1 = deal_cards(1,cards)
player2 = deal_cards(2,cards)

#player 1 will check the cards and ask player 2
puts "player 1: "
card_num = $stdin.gets.chomp
matching_cards, remaining_cards = compare_cards_nums(card_num, player2)
puts matching_cards.inspect
puts remaining_cards.inspect
