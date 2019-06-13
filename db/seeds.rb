# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('data', 'test2.csv'))

data = CSV.parse(csv_text, headers: true)
# do |row|
#   puts row['scene']
# end

data.each do |row|
  r = Restaurant.new
  r.name = row['name']
  r.scene = row['scene']
  r.user_id = row['user_id']
  r.save
end

puts "Total Restaurant count = #{Restaurant.count}"
