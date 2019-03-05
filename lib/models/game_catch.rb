class GameCatch < ActiveRecord::Base
  belongs_to :game
  belongs_to :fish_type
end