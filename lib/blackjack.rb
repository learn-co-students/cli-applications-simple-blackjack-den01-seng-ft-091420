require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
  return number
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card

  second_card = deal_card
  
  total_cards = first_card + second_card
  
  say_total =  display_card_total(total_cards)
  say_total
  total_cards
end

def invalid_command
 puts "Please enter a valid command"
end

def hit?(player_total)
  ask = prompt_user
  receive = get_user_input
  if receive == "h"
    additional_card = deal_card
    player_total = player_total + additional_card
  elsif receive =="s"
    player_total
  else
    invalid_command
    prompt_user
    get_user_input
  end
player_total  
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

 welcome
 counter = initial_round
 
 until counter > 21 do
  counter = hit?(counter)
  display_card_total(counter)
end
end_game(counter) 
end