def play(user)
  sleep 0.5
  user.create_game
  puts 'fishing!'
  fishing_session(user)
  user.update_total_score
end

def fishing_session(user)
  times_fished = 0
  thrown_back_fish = 0
  binding.pry
  until times_fished == 5
    user.fishing
    fish_caught = FishType.find(GameCatch.last.fish_type_id)
    # puts "You caught a #{fish_caught.name}!"
    puts "-" * 80
    case fishing_menu_when_fish_caught
    when 1
      puts '*' * 80
      puts "Fish kept"
      times_fished += 1
    when 2
      if thrown_back_fish == 3
        puts "You can't throw any more fish..."
        puts '-' * 80
        times_fished += 1
      elsif thrown_back_fish == 2
        puts "This was the last fish that you could throw."
        puts '-' * 80
        puts "Fishy probably will survive!"
        GameCatch.last.delete
        thrown_back_fish +=1
      else
      puts "Fishy probably will survive!"
      GameCatch.last.delete
      thrown_back_fish +=1
      end
    end
    # binding.pry
    # 'asd'
  end
end

def show_rules
  "Rules of the game"
end

def top_ten_leaderboard
  top_ten = Game.order(total_points: :desc).limit(10)
  top_ten.each do |game|
    puts "#{game.total_points}  - #{User.find(game.user_id).username}"
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