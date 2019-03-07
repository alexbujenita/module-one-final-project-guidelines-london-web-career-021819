
quotes = [
  "Insane means fewer cameras!",
  "There are plenty of fish in the sea.",
  "No good fish goes anywhere without a porpoise.",
  "Give me a fish and I eat for a day. Teach me to fish and I eat for a lifetime.",
  "The biggest fish he ever caught were those that got away.",
  "Fish in another man's pond and you will catch crabs.",
  "The best way to observe a fish is to become a fish.",
  "Fish, to taste right, must swim three times. In water, in butter, and in wine.",
  "If you want to be a different fish, jump out of school.",
  "May the holes in your net be no larger than the fish in it.",
  "Fishing is the sport of drowning worms.",
  "Many men go fishing all of their lives without knowing that it is not fish they are after.",
  "Donate to Frenzy Fish",
  "Guests, like fish, begin to smell after three days.",
  "There’s a fine line between fishing and standing on the shore like an idiot.",
  "Fishing, with me, has always been an excuse to drink in the daytime.",
  "Govern a great nation as you would cook a small fish. Do not overdo it.",
  "I love fishing. You put that line in the water and you don’t know what’s on the other end. Your imagination is under there.",
  "The average fish is a nicer person than the average person.",
  "A bank is a place that will lend you fish if you can prove that you don’t need it.",
  "He who laughs last didn’t get the fish.",
  "High heels were invented by a fish who had been kissed on the forehead.",
  "If you think you are too small to make a difference, try sleeping with a fish.",
  "It is a scientific fact that your body will not absorb fish if you take it from another person’s plate.",
  "A fish once beat me at chess, but it was no match for me at kick boxing.",
  "A black fish crossing your path signifies that the animal is going somewhere.",
  "All men are equal before fish.",
  "Women are wiser than men because they know less and understand more."
]

FishType.create(name: 'Silver Carp', min_points: 100, max_points: 200)
FishType.create(name: 'Trout', min_points: 200, max_points: 300)
FishType.create(name: 'Sea Bass', min_points: 300, max_points: 400)
FishType.create(name: 'Salmon', min_points: 350, max_points: 475)
FishType.create(name: 'Blobfish', min_points: 450, max_points: 550)
FishType.create(name: 'Halibut', min_points: 450, max_points: 650)
FishType.create(name: 'Tuna', min_points: 400, max_points: 700)
FishType.create(name: 'Flabby Whalefish', min_points: 550, max_points: 750)
FishType.create(name: 'Sunfish', min_points: 300, max_points: 900)
FishType.create(name: 'Blue Marlin', min_points: 800, max_points: 1000)


Location.create(name: 'Crystal Lake')
Location.create(name: 'Salt Water Swamp')
Location.create(name: 'Open Ocean')
Location.create(name: 'Murky Meadows')



quotes.each { |quote| Quote.create(sentence: quote) }

FishLocation.create(fish_type_id: 1, location_id: 1, fish_count: 90)
FishLocation.create(fish_type_id: 2, location_id: 1, fish_count: 80)
FishLocation.create(fish_type_id: 3, location_id: 1, fish_count: 50)
FishLocation.create(fish_type_id: 4, location_id: 1, fish_count: 40)
FishLocation.create(fish_type_id: 5, location_id: 1, fish_count: 30)
FishLocation.create(fish_type_id: 6, location_id: 1, fish_count: 25)
FishLocation.create(fish_type_id: 7, location_id: 1, fish_count: 20)
FishLocation.create(fish_type_id: 8, location_id: 1, fish_count: 15)
FishLocation.create(fish_type_id: 9, location_id: 1, fish_count: 10)
FishLocation.create(fish_type_id: 10, location_id: 1, fish_count: 5)

FishLocation.create(fish_type_id: 1, location_id: 2, fish_count: 0)
FishLocation.create(fish_type_id: 2, location_id: 2, fish_count: 150)
FishLocation.create(fish_type_id: 3, location_id: 2, fish_count: 100)
FishLocation.create(fish_type_id: 4, location_id: 2, fish_count: 60)
FishLocation.create(fish_type_id: 5, location_id: 2, fish_count: 10)
FishLocation.create(fish_type_id: 6, location_id: 2, fish_count: 30)
FishLocation.create(fish_type_id: 7, location_id: 2, fish_count: 20)
FishLocation.create(fish_type_id: 8, location_id: 2, fish_count: 0)
FishLocation.create(fish_type_id: 9, location_id: 2, fish_count: 0)
FishLocation.create(fish_type_id: 10, location_id: 2, fish_count: 0)

FishLocation.create(fish_type_id: 1, location_id: 3, fish_count: 120)
FishLocation.create(fish_type_id: 2, location_id: 3, fish_count: 120)
FishLocation.create(fish_type_id: 3, location_id: 3, fish_count: 0)
FishLocation.create(fish_type_id: 4, location_id: 3, fish_count: 0)
FishLocation.create(fish_type_id: 5, location_id: 3, fish_count: 0)
FishLocation.create(fish_type_id: 6, location_id: 3, fish_count: 0)
FishLocation.create(fish_type_id: 7, location_id: 3, fish_count: 50)
FishLocation.create(fish_type_id: 8, location_id: 3, fish_count: 40)
FishLocation.create(fish_type_id: 9, location_id: 3, fish_count: 25)
FishLocation.create(fish_type_id: 10, location_id: 3, fish_count: 15)

FishLocation.create(fish_type_id: 1, location_id: 4, fish_count: 100)
FishLocation.create(fish_type_id: 2, location_id: 4, fish_count: 100)
FishLocation.create(fish_type_id: 3, location_id: 4, fish_count: 50)
FishLocation.create(fish_type_id: 4, location_id: 4, fish_count: 4)
FishLocation.create(fish_type_id: 5, location_id: 4, fish_count: 4)
FishLocation.create(fish_type_id: 6, location_id: 4, fish_count: 4)
FishLocation.create(fish_type_id: 7, location_id: 4, fish_count: 4)
FishLocation.create(fish_type_id: 8, location_id: 4, fish_count: 3)
FishLocation.create(fish_type_id: 9, location_id: 4, fish_count: 101)
FishLocation.create(fish_type_id: 10, location_id: 4, fish_count: 3)
