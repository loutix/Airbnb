require 'faker'


10.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.first_name)
  dog = Dog.create!(name: Faker::GreekPhilosophers.name)
  city = City.create!(city_name: Faker::Address.city)
end


10.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_stroll = Stroll.create!(dogsitter: the_dogsitter, dog: the_dog)
end

10.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  city_dogsitter = CityDogsitter.create!(dogsitter: the_dogsitter, city: the_city)
end


10.times do
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  city_dog = CityDog.create!(dog: the_dog, city: the_city)
end
