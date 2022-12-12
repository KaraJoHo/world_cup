require './lib/team'
require './player'

RSpec.describe Team do 
  it 'exists and has attributes' do 
    team = Team.new("France")

    expect(team.country).to eq("France")
    expect(team.players).to eq([])
  end

  it 'starts off as not eliminated, and can be eliminated' do 
    team = Team.new("France") 

    expect(team.eliminated?).to eq(false)
    team.eliminated

    expect(team.eliminated?).to eq(true)
  end

  describe '#add_player' do 
    it 'can add players to the team' do 
      team = Team.new("France")

      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 

      expect(team.players).to eq([])

      team.add_player(mbappe) 
      team.add_player(pogba)     

      expect(team.players).to eq([mbappe, pogba])
      
    end
  end
end