class User < ActiveRecord::Base
  has_many :games
  has_many :game_catches, through: :games

  def create_game(location)
    Game.create(total_points: 0, user_id: id, location_id: location)
  end

  def fishing(location)
    fish = get_fish_from_db(location)
    fish_points = rand(fish.min_points..fish.max_points)
    range = (fish.max_points - fish.min_points) / 3

    if fish_points <= fish.min_points + range
      size = 'small'
    elsif fish_points <= fish.min_points + (2 * range) && fish_points > fish.min_points + range
      size = 'average'
    elsif fish_points > fish.min_points + (2 * range) && fish_points <= fish.max_points
      size = 'large'
    end
    fish_picture(fish.id)
    puts "You have caught a #{size} sized #{fish.name} - #{fish_points}pts"
    GameCatch.create(fish_type_id: fish.id, game_id: Game.last.id, score: fish_points)
    sleep 1
  end

  def update_total_score
    score = GameCatch.where(game_id: Game.last.id).sum(:score)
    Game.last.update(total_points: score)
    puts ""
    puts "^" * 80
    puts "You got a total of #{Game.last.total_points} points! Check the leaderboard and see if you placed!"
    puts "^" * 80
  end

  def set_password
    prompt = "> "
    puts "Type in your password. (You won't see it)"
    print prompt
    input1 = STDIN.noecho(&:gets).strip
    puts "Type it in again."
    print prompt
    input2 = STDIN.noecho(&:gets).strip
    if input1 != input2
      puts "Password doesn't match, please try again."
      sleep 0.3
      set_password
    else
      User.find(self.id).update(password: input1)
      puts "Password set!"
      sleep 1
    end
  end

  def update_password
    user = User.find(self.id)
    prompt = "> "
    puts "Type in your current password. (You won't see it)"
    print prompt
    pass_valid = STDIN.noecho(&:gets).strip
    if user.password == pass_valid
      User.find(self.id).update(password: new_pass)
    end
  end
end
