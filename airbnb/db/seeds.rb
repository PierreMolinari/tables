100.times do 
    d =Dog.create(name: Faker::Creature::Dog.name, city_id: Faker::Number.within(range: 1..20))
end

60.times do
    d =Dogsitter.create(name: Faker::Name.name, city_id: Faker::Number.within(range: 1..20))
end

20.times do
    d =City.create(name: Faker::Address.city)
end

30.times do
    d =Stroll.create(date: Faker::Date.between(from: 10.days.ago, to: Date.today) ,dog_id: Faker::Number.within(range: 1..100), dogsitter_id: Faker::Number.within(range: 1..60))
end