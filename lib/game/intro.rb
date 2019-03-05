def greeting
  puts "Welcome... to Freaky Fish"
  sleep 0.5
  puts "Please login"
  sleep 0.5
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