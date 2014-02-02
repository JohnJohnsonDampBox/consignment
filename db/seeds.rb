# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'


100.times do
  Good.new.tap do |g|
    g.name = Faker::Product.product_name
    g.price = ((500.0 - 5.0) * rand() + 5).round(2)
    g.save!
  end
end

20.times do
  Owner.new.tap do |o|
    o.name = Faker::Name.name
    o.save!
  end
end


100.times do
  Consignment.new.tap do |c|
    c.owner = Owner.order( 'RANDOM()').first
    c.good = Good.order( 'RANDOM()').first
    c.save!
  end
end
