# Only on macOS

def say_hi_to_user(name)
  voices = %w[Alex Daniel Fiona Fred Karen Moira Tessa Veena Victoria Kyoko]
  `say -v #{voices.sample} "Welcome to Fish Frenzy #{name}. Choose a location to go fishing"`
end

def say_location(loc_id)
  case loc_id
  when 1
    loc_name = 'Crystal Lake'
  when 2
    loc_name = 'Salt Water Swamp'
  when 3
    loc_name = 'Open Ocean'
  when 4
    loc_name = 'Murky Meadows'
  end
  voices = %w[Alex Daniel Fiona Fred Karen Moira Tessa Veena Victoria Kyoko]
  `say -v #{voices.sample} "You have chosen #{loc_name}. Good Luck!"`
end

def thanks_for_playing
  voices = %w[Alex Daniel Fiona Fred Karen Moira Tessa Veena Victoria Kyoko]
  `say -v #{voices.sample} "Thank you for playing, FISH FRENZY."`
end
