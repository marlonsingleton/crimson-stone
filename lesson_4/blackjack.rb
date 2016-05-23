def select_card(suits, face_value, cards_played, delrs_crds)
  suit = suits.sample
  card_select = face_value.sample
  if cards_played.include?(suit: card_select) == false && \
     delrs_crds.include?(suit: card_select) == false
     cards_played << { suit => card_select }
  else
    select_card(suits, face_value, cards_played, delrs_crds)
  end
end

def deal(suits, face_value, cards_played, real_values, delrs_crds)
  4.times { select_card(suits, face_value, cards_played, delrs_crds) }
  cards_played.each do |card|
    card.each_value { |card_value| real_values << card_value }
  end
end

def card_conversion(real_values)
  real_values.each_index do |index|
    real_values[index] = 10 if ["Jack", "Queen", "King"].include?(real_values[index])
    real_values[index] = 11 if "Ace" == real_values[index]
  end
  real_values.each_index do |index|
    real_values[index] = 1 if 11 == real_values[index] && hand_score(real_values) > 21
  end
end

def separate_cards(crds_plyd, crd_values, delr_crds, delr_cvalues)
  2.times { delr_crds << crds_plyd.shift }
  2.times { delr_cvalues << crd_values.shift }
  card_conversion(crd_values)
end

def hand_score(real_values)
  tally = 0
  real_values.each { |num| tally += num }
  tally
end

def display_hand(dealers_cards, player)
  display = []
  dealers_cards.each do |card|
    card.each { |suit, value| display << "#{value} of #{suit}" }
  end
  p "#{player} hand: #{display.join(' and ')}"
end

def display_hands(delrs_crds, cards_played, real_vals, p1, p2)
  system "clear"
  if real_vals.include?(0)
    display_hand(delrs_crds, p1)
  else
    p "Dealer's hand: #{delrs_crds[0].values[0]} of #{delrs_crds[0].keys[0]}\
 and 'This card is face down'"
  end
  display_hand(cards_played, p2)
end

def append_hit(real_values, cards_played)
  real_values << cards_played[-1].values[0]
  card_conversion(real_values)
end

def outcome(values, player)
  score = "#{player} score is #{hand_score(values)}"
  puts score + ", BUSTED!!!" if hand_score(values) > 21
  puts score + ", Black Jack!!!" if hand_score(values) == 21
  puts score + "." if hand_score(values) < 21
end

def final_outcome(real_values, dealers_cvalues)
  your_score = hand_score(real_values)
  dealers_score = hand_score(dealers_cvalues)
  if your_score == dealers_score
    puts "It's a tie."
  elsif (your_score <= 21 && your_score > dealers_score) || dealers_score > 21
    puts "You Win!!!"
  else
    puts "You Lose!"
  end
end

your = "Your"
dealer = "Dealer's"
suits = ["Diamonds", "Clubs", "Spades", "Hearts"]
face_value = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

loop do
  cards_played = []
  real_values = []
  dealers_cards = []
  dealers_cvalues = []
  deal(suits, face_value, cards_played, real_values, dealers_cards)
  separate_cards(cards_played, real_values, dealers_cards, dealers_cvalues)
  card_conversion(real_values)
  card_conversion(dealers_cvalues)
  loop do
    display_hands(dealers_cards, cards_played, real_values, dealer, your)
    outcome(real_values, your)
    real_values << 0 if hand_score(real_values) == 21
    break if hand_score(real_values) == 21
    puts "(H)it or (S)tay?"
    answer = gets.chomp.downcase
    if answer == "h"
      select_card(suits, face_value, cards_played, dealers_cards)
      append_hit(real_values, cards_played)
      display_hands(dealers_cards, cards_played, real_values, dealer, your)
      outcome(real_values, your)
    end
    real_values << 0 if answer == "s"
    break if answer == "s"
    real_values << 0 if hand_score(real_values) > 21
    break if hand_score(real_values) > 21
  end
  while hand_score(dealers_cvalues) < 17
    break if hand_score(real_values) > 21
    select_card(suits, face_value, cards_played, dealers_cards)
    dealers_cards << cards_played.pop
    append_hit(dealers_cvalues, dealers_cards)
  end
  display_hands(dealers_cards, cards_played, real_values, dealer, your)
  outcome(real_values, your)
  outcome(dealers_cvalues, dealer)
  final_outcome(real_values, dealers_cvalues)
  puts "\nWould You like to play again? (Y)es or (N)o?"
  answer = gets.chomp.downcase
  break if answer != "y"
end
