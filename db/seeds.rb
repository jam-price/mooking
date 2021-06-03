require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Cow.destroy_all
User.destroy_all

cow_breeds = ['Aberdeen Angus', 'Afrikaner', 'Alderney', 'Belgian Blue', 'Belted Galloway', 'Black Hereford', 'Charolais', 'Deoni', 'Fjäll', 'Hanwoo', 'Irish Moiled', 'Kherigarh', 'Latvian Brown', 'Nagori', 'Ongole', 'Pineywoods', 'Raya', 'Senepol', 'Tudanca', 'Vorderwald']
european_cities = ['London', 'Paris', 'Bucharest', 'Berlin', 'Stockholm', 'Dubrovnik', 'Ljubljana', 'Budapest', 'Madrid', 'Manchester', 'Edinburgh', 'Dublin', 'Warsaw', 'Milan' ]
cow_images = []


puts 'Creating users...'

5.times {
    User.create!(
            email: Faker::Internet.email,
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            password: '123456'
        )
}

puts 'Creating cows....'

20.times {
    Cow.create!(
        user_id: User.all.sample.id,
        name: Faker::Creature::Dog.name, 
        description: 'This cow is an absolutely lovely cuddler',
        breed: cow_breeds.sample,
        color: Faker::Color.color_name,
        location: european_cities.sample,
        favorite_food: Faker::Food.dish,
        price: rand(40..100),
        year_of_birth: rand(1990..2020)
    )
}

puts 'cows created'