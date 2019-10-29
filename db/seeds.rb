# frozen_string_literal: true

Player.destroy_all
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
rows = SmarterCSV.process(p_file)
rows.each do |row|
  # Add Players
  player = Player.new
  player.name = row[:player_name]
  player.full_name = row[:player_extended_name]
  player.rating = row[:overall]
  player.position = row[:position]
  player.age = row[:age]
  player.skill_moves = row[:skill_moves]
  player.weak_foot = row[:weak_foot]
  player.price = Faker::Commerce.price(range: 350..1_000_000_000.0)

  # Add Nations
  n = Nation.find_or_create_by(name: row[:nationality])
  player.nation_id = n.id

  # Add Card Types
  c_t = CardType.find_or_create_by(quality: row[:quality])
  player.card_type_id = c_t.id

  # Add Leagues and Clubs
  l = League.find_or_create_by(name: row[:league])
  player.league_id = l.id
  c = Club.find_or_create_by(name: row[:club], league_id: l.id)
  player.club_id = c.id

  player.save!
end

# Page.create(title: 'About Us', content: 'Please fill it in.', permalink: 'about-us')

puts "Generated #{Nation.count} nationalities."
puts "Generated #{CardType.count} card types."
puts "Generated #{League.count} leagues."
puts "Generated #{Club.count} clubs."
puts "Generated #{Player.count} players."
