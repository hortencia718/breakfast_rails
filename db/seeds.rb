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

activity_1 = Activity.create(name: "Swimming", duration: 30)
activity_2 = Activity.create(name: "Agility", duration: 15)

daycare_1 = Daycare.create(dog: dog_1, activity: activity_1)
daycare_2 = Daycare.create(dog: dog_2, activity: activity_2)
