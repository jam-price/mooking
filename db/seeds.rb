require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Cow.destroy_all
User.destroy_all

cow_breeds = ['Aberdeen Angus', 'Afrikaner', 'Alderney', 'Belgian Blue', 'Belted Galloway', 'Black Hereford', 'Charolais', 'Deoni', 'Fjäll', 'Hanwoo', 'Irish Moiled', 'Kherigarh', 'Latvian Brown', 'Nagori', 'Ongole', 'Pineywoods', 'Raya', 'Senepol', 'Tudanca', 'Vorderwald']

cow_colors = ['Beige', 'Black', 'Chestnut', 'Chocolate', 'Cocoa', 'Desert sand', 'Rosy brown', 'Sandy brown', 'smokey grey', 'Tan', 'Taupe', 'Walnut brown', 'White']
cow_categorys = ['Battle Cow', 'Cuddling Cow', 'Laughing Cow', 'Emotional support Cow', 'Farming Cow', 'Milking Cow', 'Friendship Cow']
european_cities = ['London', 'Paris', 'Bucharest', 'Berlin', 'Stockholm', 'Dubrovnik', 'Ljubljana', 'Budapest', 'Madrid', 'Manchester', 'Edinburgh', 'Dublin', 'Warsaw', 'Milan' ]
cow_images = []
cow_description = [
    "This cow is a large female animal that is kept on farms for its milk.",

    "A happy, funny, large and in charge Cow. Full of life and fun!",

    "Without a touch of curiosity, it would be complicated, or even impossible.",

    "They analyze their failures in order to learn lessons and constructive teachings."
]

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

15.times {
    Cow.create!(
        user_id: User.all.sample.id,
        name: Faker::Creature::Dog.name,
        description: cow_description.sample,
        breed: cow_breeds.sample,
        # color: Faker::Color.color_name,
        colors: cow_colors.sample(rand(1..3)),
        location: european_cities.sample,
        category: cow_categorys.sample,
        favorite_food: Faker::Food.dish,
        price: rand(40..100),
        year_of_birth: rand(1990..2020)
    )
}

puts 'cows created'