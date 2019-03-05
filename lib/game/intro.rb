def greeting
  # system("artii", "'Fish Frenzy'", "--font slant")
  a = Artii::Base.new :font => 'slant'
  puts a.asciify('Fish Frenzy')
  sleep 0.1
end

def login
  puts "Enter a username:"
  gets.strip
end

def create_user
  user_input = login
  # while User.find_by(username: user_input).username == user_input
  #   puts "User already exists. Would you like to continue as this user? Y/N"
  #   answer = gets.strip
  #   if answer.downcase == 'n'
  #     return
  #   end
  # end
  User.create(username: user_input)
end

def main_menu
  prompt = TTY::Prompt.new
  prompt.select('Select an Option') do |menu|
    menu.choice name: 'Play Game!',  value: 1
    menu.choice name: 'Rules', value: 2
    menu.choice name: 'Leaderboards',  value: 3
    menu.choice name: 'Quit Game', value: 4
  end
end

def game_over
  thx = Artii::Base.new
  puts thx.asciify("Thank you for playing")
  puts greeting
end