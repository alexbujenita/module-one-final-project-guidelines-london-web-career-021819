def fish_from_location(id)
  FishLocation.all.select{|l| l.location_id == id}
end

def cumulative_fish_count(id)
  count = 0
  fish_from_location(id).map{|f| count += f.fish_count}
end

def get_fish_from_db(location)
  count_array = cumulative_fish_count(location)
  number_selected = rand(1..count_array[-1])
  if number_selected >= 1 && number_selected <= count_array[0]
    FishType.find_by(name: "Silver Carp")
  elsif number_selected >= count_array[0]+1 && number_selected <= count_array[1] && count_array[0] != count_array[1]
    FishType.find_by(name: "Trout")
  elsif number_selected >= count_array[1]+1 && number_selected <= count_array[2] && count_array[1] != count_array[2]
    FishType.find_by(name: "Sea Bass")
  elsif number_selected >= count_array[2]+1 && number_selected <= count_array[3] && count_array[2] != count_array[3]
    FishType.find_by(name: "Salmon")
  elsif number_selected >= count_array[3]+1 && number_selected <= count_array[4] && count_array[3] != count_array[4]
    FishType.find_by(name: "Blobfish")
  elsif number_selected >= count_array[4]+1 && number_selected <= count_array[5] && count_array[4] != count_array[5]
    FishType.find_by(name: "Halibut")
  elsif number_selected >= count_array[5]+1 && number_selected <= count_array[6] && count_array[5] != count_array[6]
    FishType.find_by(name: "Tuna")
  elsif number_selected >= count_array[6]+1 && number_selected <= count_array[7] && count_array[6] != count_array[7]
    FishType.find_by(name: "Flabby Whalefish")
  elsif number_selected >= count_array[7]+1 && number_selected <= count_array[8] && count_array[7] != count_array[8]
    FishType.find_by(name: "Sunfish")
  elsif number_selected >= count_array[8]+1 && number_selected <= count_array[9] && count_array[8] != count_array[9]
    FishType.find_by(name: "Merlin")
  end
end
