def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand_num = rand(1..11)
  return rand_num
end

def display_card_total (card_total)
  # code #display_card_total here
  output = "Your cards add up to #{card_total}"
  puts output
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card()
  card2 = deal_card()
  cards_sum = card1 + card2 
  display_card_total(cards_sum)
  return cards_sum
end

def hit? (card_total)
  # code hit? here
  prompt_user()
  user_input = get_user_input()
  while user_input != 'h' && user_input != 's'
  invalid_command()
  prompt_user()
  user_input = get_user_input
end 
if (user_input == 'h')
  card_total += deal_card()
end 
  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  card_sum = initial_round()
  while (card_sum <= 21)
  card_sum = hit?(card_sum)
  display_card_total(card_sum)
end 
end_game(card_sum)
end
    
