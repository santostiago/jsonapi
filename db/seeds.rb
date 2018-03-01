# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_a = User.create(name: 'A')
user_b = User.create(name: 'B')

car_a  = Car.create(name: 'Car A', user_id: user_a.id)
car_aa = Car.create(name: 'Car AA', user_id: user_a.id)

car_b  = Car.create(name: 'Car B', user_id: user_b.id)
car_bb = Car.create(name: 'Car BB', user_id: user_b.id)

Extra.create(name: 'Extra A1', car_id: car_a.id, private: true)
Extra.create(name: 'Extra A2', car_id: car_a.id, private: false)

Extra.create(name: 'Extra AA1', car_id: car_aa.id, private: true)
Extra.create(name: 'Extra AA2', car_id: car_aa.id, private: false)

Extra.create(name: 'Extra B1', car_id: car_b.id, private: true)
Extra.create(name: 'Extra B2', car_id: car_b.id, private: false)

Extra.create(name: 'Extra BB1', car_id: car_bb.id, private: true)
Extra.create(name: 'Extra BB2', car_id: car_bb.id, private: false)
