# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Daycare.destroy_all #joiner class comes first
Dog.destroy_all
Activity.destroy_all

Daycare.reset_pk_sequence #joiner class comes first
Dog.reset_pk_sequence
Activity.reset_pk_sequence

dog_1 = Dog.create(name: "Coco", age: 5)
dog_2 = Dog.create(name: "Nico", age: 3)
dog_3 = Dog.create(name: Faker::Name.name, age: rand(1..15))
dog_4 = Dog.create(name: Faker::Name.name, age: rand(1..15))
dog_5 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_6 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_7 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_8 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_9 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_10 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_11 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_12 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_13 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))
dog_14 = Dog.create(name: Faker::Creature::Dog.name, age: rand(1..15))

activity_1 = Activity.create(name: "Swimming", duration: 30)
activity_2 = Activity.create(name: "Agility", duration: 15)
activity_3 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_4 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_5 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_6 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_7 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_8 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_9 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_10 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_11 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_12 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_13 = Activity.create(name: Faker::Dessert.variety, duration: 30)
activity_14 = Activity.create(name: Faker::Dessert.variety, duration: 30)

daycare_1 = Daycare.create(dog: dog_1, activity: activity_1)
daycare_2 = Daycare.create(dog: dog_2, activity: activity_2)
daycare_3 = Daycare.create(dog: dog_3, activity: activity_3)
daycare_4 = Daycare.create(dog: dog_7, activity: activity_12)
daycare_5 = Daycare.create(dog: dog_14, activity: activity_2)
daycare_6 = Daycare.create(dog: dog_11, activity: activity_9)
daycare_7 = Daycare.create(dog: dog_2, activity: activity_14)
daycare_8 = Daycare.create(dog: dog_5, activity: activity_9)
daycare_9 = Daycare.create(dog: dog_4, activity: activity_8)
daycare_10 = Daycare.create(dog: dog_5, activity: activity_11)
daycare_11 = Daycare.create(dog: dog_6, activity: activity_8)
daycare_12 = Daycare.create(dog: dog_13, activity: activity_10)
daycare_13 = Daycare.create(dog: dog_11, activity: activity_9)
daycare_14 = Daycare.create(dog: dog_2, activity: activity_7)
puts "😍"