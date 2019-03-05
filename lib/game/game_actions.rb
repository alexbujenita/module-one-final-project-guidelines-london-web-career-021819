def play(user)
  sleep 0.5
  user.create_game
  puts 'fishing!'
  5.times do
    user.fishing
  end
  user.update_total_score
end

def show_rules
  "Rules of the game"
end

def main_menu_method
  case main_menu
  when 1
    user = create_user
    puts 'Get ready for your fishing day out!'
    sleep 1
    play(user)
  when 2
    puts 'Rules of the Game'
    show_rules
    main_menu_method
  when 3
    puts 'View Leaderboards'
    main_menu_method
  when 4
    game_over
  end
  
end