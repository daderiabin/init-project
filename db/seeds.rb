# frozen_string_literal: true

Club.destroy_all
League.destroy_all
Nation.destroy_all
CardType.destroy_all

# Data from countries.csv
c_file = Rails.root + 'db/csv/countries.csv'
countries = SmarterCSV.process(c_file)
countries.each do |country|
  c = Nation.create(name: country[:country_name], img: country[:img_32])
  c.save!
end

# Data from players.csv
p_file = Rails.root + 'db/csv/players.csv'
players = SmarterCSV.process(p_file)
players.each do |player|
  # Add Nations
  n = Nation.find_or_create_by(name: player[:nationality])
  n.save!

  # Add Card Types
  c_t = CardType.find_or_create_by(quality: player[:quality])
  c_t.save!

  # Add Leagues adn Clubs
  l = League.find_or_create_by(name: player[:league])
  l.clubs.find_or_create_by(name: player[:club])
  l.save!
end

puts "Generated #{Nation.count} nationalities."
puts "Generated #{CardType.count} card types."
puts "Generated #{League.count} leagues."
puts "Generated #{Club.count} clubs."
