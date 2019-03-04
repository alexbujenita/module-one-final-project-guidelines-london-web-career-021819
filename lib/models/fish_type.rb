class FishType < ActiveRecord::Base
  has_many :game_catches
  has_many :fish_locations
  has_many :locations, through: :fish_locations
end