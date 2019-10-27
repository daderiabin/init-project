# frozen_string_literal: true

CardType.destroy_all
Nation.destroy_all
League.destroy_all
Club.destroy_all

puts "Generated #{CardType.count} card types."
puts "Generated #{Nation.count} nations."
puts "Generated #{League.count} leagues."
puts "Generated #{Club.count} clubs."
