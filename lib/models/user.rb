class User < ActiveRecord::Base
  has_many :games
  has_many :game_catches, through: :games

  def create_game
    Game.create(total_points: 0, user_id: id)
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

    puts "You have caught a #{size} sized #{fish.name} - #{fish_points}pts"
    GameCatch.create(fish_type_id: fish.id, game_id: Game.last.id, score: fish_points)
    sleep 1
  end

  def update_total_score
    score = GameCatch.where(game_id: Game.last.id).sum(:score)
    Game.last.update(total_points: score)
    puts "During this fishing session you accumulated #{Game.last.total_points} points!"
  end
end
