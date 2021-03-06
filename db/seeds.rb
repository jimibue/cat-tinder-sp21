# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
5.times do
    name = Faker::Creature::Cat.name
    breed = Faker::Creature::Cat.breed
    registry = Faker::Creature::Cat.registry
    avatar = Faker::Avatar.image(slug: name, size: '150x150', format: 'png', set: 'set4')
    Cat.create(name: name, breed: breed, registry: registry, avatar: avatar)
  end
  
  puts "#{Cat.all.size} Cats Seeded" #
#   puts "200 Cats Seeded" #BAD
