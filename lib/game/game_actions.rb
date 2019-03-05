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

def top_ten_leaderboard
  top_ten = Game.order(total_points: :desc).limit(10)
  top_ten.each do |game|
    puts "#{User.find(game.user_id).username}  -  #{game.total_points}"
  end
end

def main_menu_method
  case main_menu
  when 1
    user = create_user
    puts 'Get ready for your fishing day out!'
    sleep 1
    play(user)
    main_menu_method
  when 2
    puts 'Rules of the Game'
    show_rules
    main_menu_method
  when 3
    top_ten_leaderboard
    main_menu_method
  when 4
    game_over
  end

end