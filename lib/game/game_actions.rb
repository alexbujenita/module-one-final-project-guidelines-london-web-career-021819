def play(user, location)
  sleep 0.5
  user.create_game
  puts 'fishing!'
  5.times do
    user.fishing(location)
  end
  user.update_total_score
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
