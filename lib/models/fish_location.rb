class FishLocation < ActiveRecord::Base
  belongs_to :fish_type
  belongs_to :location
end