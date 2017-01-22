require 'csv'

# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





CSV.foreach('./names.csv', :headers => true) do |row|
  Name.create!(row.to_hash)
end

CSV.foreach('./pictures.csv', :headers => true) do |row|
  Picture.create!(row.to_hash)
end
