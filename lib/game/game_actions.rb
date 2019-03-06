def play(user, location)
  sleep 0.5
  user.create_game
  fishing_session(user, location)
  user.update_total_score
end

def fishing_session(user, location)
  times_fished = 0
  thrown_back_fish = 0
  puts ""
  until times_fished == 5
    puts "*" * 80
    user.fishing(location)
    puts "*" * 80
    case fishing_menu_when_fish_caught
    when 1
      puts "Fish kept"
      puts ''
      times_fished += 1
    when 2
      if thrown_back_fish == 3
        puts "You can't throw any more fish..."
        times_fished += 1
      elsif thrown_back_fish == 2
        puts "This was the last fish that you could throw."
        puts "Fishy probably will survive!"
        puts ''
        GameCatch.last.delete
        thrown_back_fish +=1
      else
      puts "Fishy probably will survive!"
      puts ''
      GameCatch.last.delete
      thrown_back_fish +=1
      end
    end
  end
end

def show_rules
  system('clear')
  puts 'RULES OF FISHING FRENZY'
  puts "- Each time you play you have 5 opportunities to catch a fish!"
  puts "- If the fish you catch doesn't meet your high standards, you only have 3 chances to release your fish and find another before the end of the fishing day"
  puts "- Every time you catch a fish you must decide whether you would like to keep it forever or release it back into the wild"
  puts "- Your final score is based upon the final 3 fish you choose to keep"
  puts "- Be cautious with which fish you decide to keep!"
  puts ""
end

def location_menu_method
  case location_menu
    when 1
      puts 'You have chosen Crystal Lake!'
      return 1
    when 2
      puts 'You have chosen Salt Water Swamp!'
      return 2
    when 3
      puts 'You have chosen Open Ocean!'
      return 3
    when 4
      puts 'You have chosen Murky Meadows!'
      return 4
  end
end

def top_ten_leaderboard
  system('clear')
  puts "Top 10 Highscores"
  top_ten = Game.order(total_points: :desc).limit(10)
  top_ten.each do |game|
    puts "#{game.total_points}  - #{User.find(game.user_id).username}"
  end
  puts ""
end

def main_menu_method
  case main_menu
  when 1
    user = create_user
    system('clear')
    puts "Welcome to Fish Frenzy #{user.username}. Choose a location to go fishing:"
    location = location_menu_method
    puts 'Get ready for your fishing day out!'
    sleep 1
    play(user, location)
    main_menu_method
  when 2
    show_rules
    main_menu_method
  when 3
    top_ten_leaderboard
    sleep 3
    main_menu_method
  when 4
    game_over
  end
end
