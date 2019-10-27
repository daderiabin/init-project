# frozen_string_literal: true

# CardType.destroy_all
Nation.destroy_all
# League.destroy_all
# Club.destroy_all

nats_file = Rails.root + 'db/csv/countries.csv'
nats = SmarterCSV.process(nats_file)
nats.each do |nat|
  n = Nation.create(name: nat[:country_name], img: nat[:img_32])
  n.save!
end

# puts "Generated #{CardType.count} card types."
puts "Generated #{Nation.count} nations."
# puts "Generated #{League.count} leagues."
# puts "Generated #{Club.count} clubs."
