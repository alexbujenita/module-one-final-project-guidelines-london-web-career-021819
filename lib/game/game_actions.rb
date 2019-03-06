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
  sleep 1
  until times_fished == 5
    puts "*" * 80
    user.fishing(location)
    puts "*" * 80
    case fishing_menu_when_fish_caught
    when 1
      puts "Fish kept"
      puts ''
      in_between_fishing(in_between_menu) # Do SOmething
      # binding.pry
      times_fished += 1
    when 2
      if thrown_back_fish == 3
        puts "You can't throw any more fish..."
        in_between_fishing(in_between_menu) # Do Something
        times_fished += 1
      elsif thrown_back_fish == 2
        puts "This was the last fish that you could throw."
        puts "Fishy probably will survive!"
        puts ''
        GameCatch.last.delete
        thrown_back_fish += 1
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
  puts '- Each time you play you have 5 opportunities to catch a fish!'
  puts '- Every time you catch a fish you must decide whether you would like to keep it forever or release it back into the wild'
  puts '- Careful! You can only release 3 fish back into the wild before you run out of bait'
  puts '- Your total score is based upon the final 5 fish you choose to keep'
  puts '- Check out the Fish Species table to see which fish score the most points!'
  puts ''
end

def location_menu_method
  case location_menu
  when 1
    puts 'You have chosen Crystal Lake!'
    1
  when 2
    puts 'You have chosen Salt Water Swamp!'
    2
  when 3
    puts 'You have chosen Open Ocean!'
    3
  when 4
    puts 'You have chosen Murky Meadows!'
    4
  end
end

def top_ten_leaderboard
  system('clear')
  puts "TOP 10 HIGHSCORES"
  table = TTY::Table.new
  table << ['Rank', 'Username','Score']
  n = 1
  top_ten = Game.order(total_points: :desc).limit(10)
  top_ten.each do |game|
    table << [n, User.find(game.user_id).username, game.total_points]
    n +=1
  end
  puts table.render :ascii
end

def fish_stats_table
  system('clear')
  puts "ALL FISH SPECIES"
  table = TTY::Table.new
  table << ['Species','Min Points', 'Max Points']
  FishType.all.each do |fish|
    table << [fish.name, fish.min_points, fish.max_points]
  end

  puts table.render :ascii
end


def location_info
  system('clear')
  puts "CRYSTAL LAKE - Clear blue waters and lack of waves attract ALL varities of fish. A ideal location for beginners."
  puts ""
  puts "OPEN OCEAN - Are you looking for average sized fish? You've chosen the wrong place. Only big game and tiny fish here."
  puts ""
  puts "MURKEY MEADOW - All medium fish have been eaten by a group of Sunfish varying massivly in size. Try and catch some."
  puts ""
  puts "SALT SWAMP - The swamps varying environment make it a hard place to fish. Who knows what you might find."
end


def main_menu_method
  case main_menu
  when 1
    user = create_user
    system('clear')
    puts "Welcome to Fish Frenzy #{user.username}. Choose a location to go fishing:"
    say_hi_to_user(user.username)
    location = location_menu_method
    say_location(location)
    puts 'Get ready for your fishing day out!'
    sleep 1
    play(user, location)
    puts ""
    sleep 2
    main_menu_method
  when 2
    show_rules
    main_menu_method
  when 3
    top_ten_leaderboard
    puts ""
    sleep 2
    main_menu_method
  when 4
    game_over
  when 5
    fish_stats_table
    puts ""
    sleep 2
    main_menu_method
  when 6
    location_info
    puts ""
    main_menu_method
  end
end
