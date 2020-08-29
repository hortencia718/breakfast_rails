# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dog_1 = Dog.create(name: "Coco", age: 5)
dog_2 = Dog.create(name: "Nico", age: 3)

activity_1 = Activity.create(name: "Swimming", duration: 30)
activity_2 = Activity.create(name: "Agility", duration: 15)

# daycare_1 = Daycare.create(dog: dog_1, activity: activity_1)
daycare_2 = Daycare.create(dog_id: dog_2, activity_id: activity_2)
