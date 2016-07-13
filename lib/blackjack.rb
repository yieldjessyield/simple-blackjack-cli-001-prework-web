def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
  # code #initial_round here
end

## Helper Code
def hit?(card_total)
  sum = card_total
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    sum += deal_card(sum)
  else
    invalid_command
  end
  sum
end

## My Code
#def hit?(number)
#  prompt_user
#  get_user_input
#  new_card_total = number + deal_card
#  if user_input = "s"
#    number
#
#  elsif user_input = "h"
#    new_card_total
#
#  else
#    invalid_command
#  end
#  # code hit? here
#end

def invalid_command

  #puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
end_game(sum)

end
#
#
#def welcome
#  puts "Welcome to the Blackjack Table"
#end
#
#def deal_card
#  rand(1..11)
#end
#
#def prompt_user
#  puts "Type 'h' to hit or 's' to stay"
#end
#
#def display_card_total(card_total)
#  puts "Your cards add up to #{card_total}"
#end
#
#def get_user_input
#  input = gets.chomp
#end
#
#def end_game(card_total)
#  puts "Sorry, you hit #{card_total}. Thanks for playing!"
#end
#
#def initial_round
#  sum = deal_card + deal_card
#  display_card_total(sum)
#  sum
#end
#
#def hit?(card_total)
#  sum = card_total
#  prompt_user
#  user_input = get_user_input
#  if user_input == "h"
#    sum += deal_card(sum)
#  else
#    invalid_command
#  end
#  sum
#end
#
#def invalid_command
#end
#
#def runner
#  welcome
#  sum = initial_round
#  until sum > 21 do
#    sum = hit?(sum)
#    display_card_total(sum)
#  end
#  end_game(sum)
#end

