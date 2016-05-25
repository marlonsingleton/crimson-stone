SUITS = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
num_cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10']
face_cards = ["Jack", "Queen", "King", "Ace"]
num_cards << face_cards
VALUES = num_cards.flatten

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle # Nice use of methods : )
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == "Ace"
      sum += 11
    elsif value.to_i == 0 # String to Int('Jack', 'Queen', 'King')
      sum += 10
    else
      sum += value.to_i
    end
  end

  # ensure right value of Ace is applied
  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_cards(cards)
  display = []
  cards.each do |card|
    display << "#{card[1]} of #{card[0]}"
  end
  display.join(" and ")
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  system "clear"
  prompt "Welcome to Twenty-One!\n\n"

  # Deck and placeholders set
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # Create player and dealers hand
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  dealer_card1 = "#{dealer_cards[0][1]} of #{dealer_cards[0][0]}"
  prompt "Dealer has #{dealer_card1} and ?"
  prompt "You have: #{display_cards(player_cards)}, Total: #{total(player_cards)}"

  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      system "clear"
      prompt "You chose to hit!"
      prompt "Your cards are now: #{display_cards(player_cards)}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  system "clear"
  prompt "Dealer turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= 17
    prompt "Dealer has #{display_cards(dealer_cards)}, Total: #{total(dealer_cards)}"
    sleep 2
    prompt "Dealer hits!"
    dealer_cards << deck.pop
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  # compare
  puts "============"
  prompt "Dealer has #{display_cards(dealer_cards)}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{display_cards(player_cards)}, for a total of: #{total(player_cards)}"
  puts "============"

  display_result(dealer_cards, player_cards)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
