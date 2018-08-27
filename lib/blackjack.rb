def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card.to_i 
  second_card = deal_card.to_i
  total = first_card + second_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 's'
  total
elsif input == 'h'
  total += deal_card
else
  prompt_user
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  
end

