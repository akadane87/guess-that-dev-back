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

Picture.create(name: 'Adam', url: 'https://i.imgur.com/b6QeoCN.jpg')
Picture.create(name: 'Alex', url: 'https://i.imgur.com/eIEDIH7.jpg')
Picture.create(name: 'Ariel', url: 'https://i.imgur.com/1G5isE0.jpg')
Picture.create(name: 'Brandon', url: 'https://i.imgur.com/1JxOEd8.jpg')
Picture.create(name: 'John', url: 'https://i.imgur.com/lJaU0W5.jpg')
Picture.create(name: 'Julia', url: 'https://i.imgur.com/AAJ5IAL.jpg')
Picture.create(name: 'Kevin', url: 'https://i.imgur.com/kgRz0PX.jpg')
Picture.create(name: 'Kira', url: 'https://i.imgur.com/qQOQnSu.jpg')
Picture.create(name: 'Kosta', url: 'https://i.imgur.com/aO9KSIr.jpg')
Picture.create(name: 'Matt', url: 'https://i.imgur.com/Q9PDHNP.jpg')
Picture.create(name: 'Patrick', url: 'https://i.imgur.com/kfkoz1B.jpg')
Picture.create(name: 'Peter', url: 'https://i.imgur.com/eJbtKGx.jpg')
Picture.create(name: 'Rick', url: 'https://i.imgur.com/4kQJqwo.jpg')
Picture.create(name: 'Ryan', url: 'https://i.imgur.com/GIo51yq.jpg')
Picture.create(name: 'Suja', url: 'https://i.imgur.com/O5EzwPA.jpg')
Picture.create(name: 'Yianni', url: 'https://i.imgur.com/5R35wNc.jpg')
Picture.create(name: 'Caleb', url: 'https://i.imgur.com/pZcbJVG.jpg')
Picture.create(name: 'Kara', url: 'https://i.imgur.com/s8a2kR3.jpg')
Picture.create(name: 'Stanley', url: 'https://i.imgur.com/yFGS4pa.jpg')






# CSV.foreach('./names.csv', :headers => true) do |row|
#   Name.create!(row.to_hash)
# end

# CSV.foreach('./pictures.csv', :headers => true) do |row|
#   Picture.create!(row.to_hash)
# end
