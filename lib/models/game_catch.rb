class GameCatch < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :fish_specie
end