# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sport.create(image_id: open("./app/assets/images/tennis2.jpg"), name: 'テニス')
Sport.create(image_id: open("./app/assets/images/golf.jpg"), name: 'ゴルフ')
Sport.create(image_id: open("./app/assets/images/soccer.jpg"), name: 'サッカー')
Sport.create(image_id: open("./app/assets/images/baseball.jpg"), name: '野球')