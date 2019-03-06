

def in_between_menu
  prompt = TTY::Prompt.new
  options = ['Continue fishing', 'Drink', 'Say something']
  prompt.select('You caught a fish, now what?', options, filter: true)
end

def in_between_fishing(choice)
  case choice
  when 'Continue fishing'
    puts "That's the spirit mate"
  when 'Drink'
    drink_prompt = TTY::Prompt.new
    choices = %w(vodka beer wine whisky bourbon water)
    drinks = drink_prompt.multi_select("What would you like to drink?", choices)
    puts "Congratulations, you are drunk and alcoholic" if drinks.length == choices.length
    puts "|"*100
    sleep 1
    puts "You feel better now and can go back to fishing!"
    puts "|"*100
    sleep 1
  when 'Say something'
    random_quote
  end
end