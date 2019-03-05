def crystal_lake
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


 def salt_water_swamp
   case rand(1..337)
   when 0..32 then 'Sea Bass'
   when 33..82 then 'Trout'
   when 83..132 then 'Blobfish'
   when 133..182 then 'Halibut'
   when 183..217 then 'Tuna'
   when 218..227 then 'Flabby Whalefish'
   end
 end

def open_ocean
  case rand(1..337)
  when 1..150 then 'Silver Carp'
  when 151..260 then 'Salmon'
  when 261..295 then 'Tuna'
  when 296..330 then 'Flabby Whalefish'
  when 331..355 then 'Sunfish'
  when 356..366 then 'Merlin'
  end
end

 def murky_meadows
   case rand(1..337)
   when 1..337 then 'Merlin'
   end
 end



 def get_fish_from_db(location_choice)
   if location_choice == 1
     FishType.find_by(name: crystal_lake)
   elsif location_choice == 2
     FishType.find_by(name: salt_water_swamp)
   elsif location_choice == 3
     FishType.find_by(name: open_ocean)
   elsif location_choice == 4
     FishType.find_by(name: murky_meadows)
   end
 end
