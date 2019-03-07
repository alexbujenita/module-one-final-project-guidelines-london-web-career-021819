

def in_between_menu
  prompt = TTY::Prompt.new
  options = ['Continue fishing', 'Drink', 'Say something']
  prompt.select('You caught a fish, now what?', options, filter: true)
end

def in_between_fishing(choice)
  case choice
  when 'Continue fishing'
    puts ""
  when 'Drink'
    drink_prompt = TTY::Prompt.new
    choices = %w(Water Coffee Beer)
    drinks = drink_prompt.multi_select("What would you like to drink?", choices)
    sleep 1
    puts "--------You're feeling refreshed now! Get back to fishing!--------"
    puts ""
    sleep 2
  when 'Say something'
    random_quote
    puts ""
  end
end
