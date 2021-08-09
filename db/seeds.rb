Team.delete_all
Player.delete_all
Position.delete_all
Game.delete_all


4.times do
    Team.create(
        team_name: Faker::Sports::Basketball.team, 
        coach: Faker::Sports::Basketball.coach 
    )
end

p1 = Position.create(position: "Point Guard")
p2 = Position.create(position: "Shooting Guard")
p3 = Position.create(position: "Power Forward")
p4 = Position.create(position: "Center")
p5 = Position.create(position: "Small Forward")


pl1 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 1, position: p1)
 
pl2 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 1, position: p2)
pl3 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 1, position: p3)
pl4 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 1, position: p4)
pl5 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 1, position: p5)

pl6 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 2, position: p1)
pl7 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 2, position: p2)
pl8 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 2, position: p3)
pl9 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 2, position: p4)
pl10 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 2, position: p5)     
pl11 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 3, position: p1)
pl12 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 3, position: p2)
pl13 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 3, position: p3)
pl14 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 3, position: p4)
pl15 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 3, position: p5)
pl16 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 4, position: p1)
 
pl17 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 4, position: p2)
pl18 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 4, position: p3)
pl19 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 4, position: p4)
pl20 = Player.create(
        name: Faker::Sports::Basketball.player, bio:  Faker::Lorem.paragraph,
        age:  (17..35).to_a.sample, number: (1..20).to_a.sample, team_id: 4, position: p5)


allteams = Team.all

g1 = Game.create(date:'08/01/2021', team1:allteams[0].team_name, team2:allteams[1].team_name, game_score: "20 10")  
g2 = Game.create(date:'08/02/2021', team1:allteams[0].team_name, team2:allteams[2].team_name, game_score: "30 50")
g3 = Game.create(date:'08/03/2021', team1:allteams[0].team_name, team2:allteams[3].team_name, game_score: "5 40")
g4 = Game.create(date:'08/04/2021', team1:allteams[1].team_name, team2:allteams[2].team_name, game_score: "10 87")
g5 = Game.create(date:'08/05/2021', team1:allteams[1].team_name, team2:allteams[3].team_name, game_score: "20 20")
g6 = Game.create(date:'08/06/2021', team1:allteams[2].team_name, team2:allteams[3].team_name, game_score: "10 30")

pf1 = Performance.create(player_score:30, game: g1, player: pl5)
pf2 = Performance.create(player_score:15, game: g2, player: pl9)
pf3 = Performance.create(player_score:72, game: g4, player: pl18)
pf4 = Performance.create(player_score:40, game: g5, player: pl20)
pf5 = Performance.create(player_score:22, game: g6, player: pl19)
pf6 = Performance.create(player_score:11, game: g1, player: pl2)
pf7 = Performance.create(player_score:50, game: g2, player: pl6)
pf8 = Performance.create(player_score:72, game: g3, player: pl15)

