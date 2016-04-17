100.times { Book.create(title: Faker::Company.catch_phrase, author: Faker::Name.name, release_year:(1600..2016).to_a.sample, price: Faker::Commerce.price, description: Faker::Company.bs) }
