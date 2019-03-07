# require 'pry'
# require 'tty-spinner'

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

    choices = %w[Beer RedBull Water Tea Coffee]
    drinks = drink_prompt.multi_select('What would you like to drink?', choices)
    puts '|' * 100
    sleep 1
    puts 'You feel better now and can go back to fishing!'
    puts '|' * 100
    sleep 1
    puts "--------You're feeling refreshed now! Get back to fishing!--------"
    puts ""
    sleep 2
  when 'Say something'
    random_quote
    puts ""
  end
end


def spin_while_fishing
  animations = %i[spin_2 pulse_2 dots_6 arrow arrow_pulse bouncing bouncing_ball star shark pong]
  spinner = TTY::Spinner.new('[:spinner] Fishing ...', format: animations.sample)
  spinner.auto_spin
  sleep(rand(1..5))
  spinner.success('Fish bit!')
end

