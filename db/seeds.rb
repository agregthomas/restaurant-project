# frozen_string_literal: true

# https://gist.github.com/arjunvenkat/1115bc41bf395a162084
require 'csv'

csv_text = File.read(Rails.root.join('data', 'test2.csv'))

data = CSV.parse(csv_text, headers: true)

data.each do |row|
  r = Restaurant.new
  r.name = row['name']
  r.scene = row['scene']
  r.user_id = row['user_id']
  r.save
end

puts "Total Restaurant count = #{Restaurant.count}"
