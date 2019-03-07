class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :game_catches
end
