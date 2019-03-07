require 'pry'
require 'tty-prompt'

def quiz
  quiz_time
  puts "You can score a maximum of 7 points during this mini-game"
  sleep 1
  good_luck
  points = first + second + third + fourth + fifth + sixth + seventh
  
  case points
  when 0
    `afplay lib/art/sound/drum-roll.mp3 &`
    sleep 0.1
    `afplay lib/art/sound/ohno.mp3 &`
    sleep 0.2
    puts '*' * 100
    puts "All wrong, study fish some more or get a new hobby!"
  when 1
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    sleep 0.5
    puts '*' * 100
    puts "I know you can do better than this!"
    puts '*' * 100
    puts "Give it another go"
    sleep 2
  when 2
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    puts '*' * 100
    puts "I know you can do better than this!"
    puts '*' * 100
    puts "Give it another go"
    sleep 2
  when 3
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    puts '*' * 100
    puts "I know you can do better than this!"
    puts '*' * 100
    puts "Give it another go"
    sleep 2
  when 4
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    puts '*' * 100
    puts "You are doing good!"
    sleep 2
  when 5
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    puts '*' * 100
    puts "Impressive fish knowledge!"
    sleep 2
  when 6
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "You scored #{points} points"
    sleep 1
    puts '*' * 100
    puts "You were so close to score the maximum amount of points!"
    sleep 1
    puts '*' * 100
    puts "Why don't you give it another try?!"
    sleep 2
  when 7
    `afplay lib/art/sound/drum-roll.mp3 &`
    puts '*' * 100
    puts "Great job!!!"
    sleep 0.3
    `afplay lib/art/sound/vic.mp3 &`
    puts '*' * 100
    puts "You got all of the questions right!!!"
    sleep 1
    puts '*' * 100
    puts "Go around the world fishing and spreading your knowledge!"
    sleep 2
  end

end

def first
  prompt = TTY::Prompt.new
  prompt.select('Are dugongs considered fish?') do |menu|
    menu.choice :name => 'Yes', value: 0
    menu.choice :name => 'No', value: 1
  end
end

def second
  prompt = TTY::Prompt.new
  prompt.select('What poisonous fish is served in high end sushi restaurants?') do |menu|
    menu.choice :name => 'Salmon', value: 0
    menu.choice :name => 'Pufferfish', value: 1
    menu.choice :name => 'Blue Marlin', value: 0
    menu.choice :name => 'Shark', value: 0
  end
end

def third
  prompt = TTY::Prompt.new
  prompt.select('What sign of the zodiac is represented by two fish?') do |menu|
    menu.choice :name => 'Capricorn', value: 0
    menu.choice :name => 'Aquarius', value: 0
    menu.choice :name => 'Libra', value: 0
    menu.choice :name => 'Pisces', value: 1
  end
end

def fourth
  prompt = TTY::Prompt.new
  prompt.select('What is the largest fish?') do |menu|
    menu.choice :name => 'Giant catfish', value: 0
    menu.choice :name => 'Whale', value: 0
    menu.choice :name => 'Whale shark', value: 1
    menu.choice :name => 'Dolphin', value: 0
  end
end

def fifth
  prompt = TTY::Prompt.new
  prompt.select('Which highly regarded food fish is the largest of all flat fish?') do |menu|
    menu.choice :name => 'Giant catfish', value: 0
    menu.choice :name => 'Sunfish', value: 0
    menu.choice :name => 'Halibut', value: 1
    menu.choice :name => 'Carp', value: 0
  end
end

def sixth
  prompt = TTY::Prompt.new
  prompt.select("What does the word 'koi' mean in Japanese?") do |menu|
    menu.choice :name => 'Carp', value: 1
    menu.choice :name => 'Tuna', value: 0
    menu.choice :name => 'Swimming bear', value: 0
    menu.choice :name => 'Salmon', value: 0
  end
end

def seventh
  prompt = TTY::Prompt.new
  prompt.select("What are baby salmon called when emerging from their eggs?") do |menu|
    menu.choice :name => 'Little Salmon', value: 0
    menu.choice :name => 'Pry', value: 0
    menu.choice :name => 'Lil', value: 0
    menu.choice :name => 'Fry', value: 1
  end
end
