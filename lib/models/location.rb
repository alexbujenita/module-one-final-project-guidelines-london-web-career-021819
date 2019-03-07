class Location < ActiveRecord::Base
  has_many :fish_locations
  has_many :fish_types, through: :fish_locations
  belongs_to :games
end
