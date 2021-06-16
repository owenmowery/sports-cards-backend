# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.destroy_all
Card.destroy_all

Admin.create(
    name: "Owen Mowery",
    email: "owenmowery99@gmail.com",
    password_digest: "password"
)

Card.create([{
    player_name: "Chase Claypool",
    player_team: "Pittsburgh Steelers",
    league: "NFL",
    position: "WR",
    card_value: "$500",
    card_img: "public/img/chase-claypool.jpg",
    admin: Admin.all.sample
},
{
    player_name: "Joe Burrow",
    player_team: "Cinncinati Bengals",
    league: "NFL",
    position: "QB",
    card_value: "$800",
    card_img: "public/img/joe-burrow.jpg",
    admin: Admin.all.sample
},
{
    player_name: "Larry Bird",
    player_team: "Boston Celtics",
    league: "NBA",
    position: "PF/SF",
    card_value: "$400",
    card_img: "public/img/larry-bird.jpg",
    admin: Admin.all.sample
},
{
    player_name: "LaMelo Ball",
    player_team: "Charlotte Hornets",
    league: "NBA",
    position: "PG",
    card_value: "$900",
    card_img: "public/img/lamelo-ball.jpg",
    admin: Admin.all.sample
},
{
    player_name: "LaMelo Ball",
    player_team: "Charlotte Hornets",
    league: "NBA",
    position: "PG",
    card_value: "$600",
    card_img: "public/img/lamelo-ball-2.jpg",
    admin: Admin.all.sample
},
{
    player_name: "Tua Tagovailoa",
    player_team: "Miami Dolphins",
    league: "NFL",
    position: "QB",
    card_value: "$1100",
    card_img: "public/img/tua-tagovailoa.jpg",
    admin: Admin.all.sample
},
{
    player_name: "Aleksej Pokusevski",
    player_team: "Oklahoma City Thunder",
    league: "NBA",
    position: "SF",
    card_value: "$200",
    card_img: "public/img/aleksej-pokusevski.jpg",
    admin: Admin.all.sample
}
])

puts "Completed"


