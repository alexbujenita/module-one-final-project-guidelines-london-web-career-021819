require_relative '../config/environment'

def final_game
  greeting
  # `afplay lib/art/sound/pac.mp3 &`
  sleep 1
  system("clear")
  main_menu_method
  thanks_for_playing
  return "Copyleft 2019"
end


t1 = Thread.new{(`afplay lib/art/sound/pac.mp3 &`)}
t2 = Thread.new{(final_game)}
t1.join
t2.join
