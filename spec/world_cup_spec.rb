require './lib/team'
require './lib/player'
require './lib/world_cup'

RSpec.describe WorldCup do 
  it 'exists and has a year and array of teams' do 
    france = Team.new("France")

    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})    
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  

    france.add_player(mbappe)    
    france.add_player(pogba)    

    croatia = Team.new("Croatia")  

    modric = Player.new({name: "Luka Modric", position: "midfielder"})    
    vida = Player.new({name: "Domagoj Vida", position: "defender"}) 

    croatia.add_player(modric)    
    croatia.add_player(vida)    

    world_cup = WorldCup.new(2018, [france, croatia])  

    expect(world_cup).to be_a(WorldCup)
    expect(world_cup.year).to eq(2018)
    expect(world_cup.teams).to eq([france, croatia])
  end
end