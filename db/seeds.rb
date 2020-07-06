# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ------- my DB Data Structure --------
# crypto_currency:text <- ['Etherum', 'Bitcoin' ...] REQUIRED
# amount:integer <- [10, 1000 ...]
# date_of_purchase:text <- ['01.01.2020', '11.03.2000' ...]
# wallet_location:text <- ['Home', 'Jennas Home Wallet' ...] REQUIRED

7.times do
    CryptoItem.create({
        crypto_currency: Faker::CryptoCoin.coin_name,
        amount: Faker::Number.between(from: 1, to: 1000),
        date_of_purchase: Faker::Date.between(from: '2019-01-01', to: Date.today ),
        wallet_location: Faker::Games::HalfLife.location
    })
end