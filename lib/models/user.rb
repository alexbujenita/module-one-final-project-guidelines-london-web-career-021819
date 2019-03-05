class User < ActiveRecord::Base
  has_many :games
  has_many :game_catches, through: :games

  def create_game
    Game.create(total_points: 0, user_id: self.id)
  end

  def fishing
    fish = get_fish_from_db
    fish_points = rand(fish.min_points..fish.max_points)
    GameCatch.create(fish_type_id: fish.id, game_id: Game.last.id, score: fish_points)
  end

  def update_total_score
    score = GameCatch.where(game_id: Game.last.id).sum(:score)
    Game.last.update(total_points: score)
  end
end