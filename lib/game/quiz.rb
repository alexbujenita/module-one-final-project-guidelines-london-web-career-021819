require 'pry'
require 'tty-prompt'

def quiz
  points = first + second + third + fourth + fifth + sixth + seventh
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
    menu.choice :name => 'Little Carp', value: 0
    menu.choice :name => 'Pry', value: 0
    menu.choice :name => 'Lil', value: 0
    menu.choice :name => 'Fry', value: 1
  end
end
