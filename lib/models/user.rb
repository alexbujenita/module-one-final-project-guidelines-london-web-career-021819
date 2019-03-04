class User < ActiveRecord::Base
  has_many :games
  has_many :game_catches
end