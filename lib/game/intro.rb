def greeting
  # system("artii", "'Fish Frenzy'", "--font slant")
  a = Artii::Base.new :font => 'slant'
  puts a.asciify('Fish Frenzy')
  sleep 3
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