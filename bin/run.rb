require_relative '../config/environment'


def final_game
  greeting
  sleep 1
  system("clear")
  main_menu_method
  thanks_for_playing
  return "Copyleft 2019"
end

final_game
