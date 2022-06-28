# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sport.create(image: File.open("./app/assets/images/tennis2.jpg"), name: 'テニス')
# Sport.create(image: File.open("./app/assets/images/golf.jpg"), name: 'ゴルフ')
# Sport.create(image: File.open("./app/assets/images/soccer.jpg"), name: 'サッカー')
# Sport.create(image: File.open("./app/assets/images/baseball.jpg"), name: '野球')

sports = [
    {name: 'テニス', image: './app/assets/images/tennis2.jpg'},
    {name: 'ゴルフ', image: './app/assets/images/golf.jpg'},
    {name: 'サッカー', image: './app/assets/images/soccer.jpg'},
    {name: '野球', image: './app/assets/images/baseball.jpg'},
  ]

sports.each do |sport|
  sport_data = Sport.find_by(name: sport[:name])
  if sport_data.nil?
    Sport.create(
        name: sport[:name],
        image: File.open(sport[:image])
      )
  end
end