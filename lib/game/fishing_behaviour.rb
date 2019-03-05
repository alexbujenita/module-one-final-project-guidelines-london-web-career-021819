def get_fish_crystal_lake
  case rand(1..337)
  when 1..80 then 'Silver Carp'
  when 81..155 then 'Salmon'
  when 156..205 then 'Sea Bass'
  when 206..245 then 'Trout'
  when 246..275 then 'Blobfish'
  when 276..300 then 'Halibut'
  when 301..320 then 'Tuna'
  when 321..330 then 'Flabby Whalefish'
  when 331..335 then 'Sunfish'
  when 336..337 then 'Merlin'
  end
 end

 def get_fish_from_db
   FishType.find_by(name: get_fish_crystal_lake)
 end