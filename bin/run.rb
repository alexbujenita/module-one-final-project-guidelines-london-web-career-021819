require_relative '../config/environment'

# greeting
# sleep 1
# system("clear")
# create_user
def play
greeting
sleep 1
system("clear")
user = create_user
puts 'will start fishing'
sleep 0.5
user.create_game
puts 'fishing!'
5.times do
  user.fishing
end
user.update_total_score

end

play