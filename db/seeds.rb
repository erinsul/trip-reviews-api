# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
Place.transaction do
  CSV.foreach 'data/cities.csv', headers: true do |place|
    Place.create(place.to_hash)
  end
end

Tag.transaction do
  CSV.foreach 'data/tags.csv', headers: true do |tag|
    Tag.create(tag.to_hash)
  end
end
