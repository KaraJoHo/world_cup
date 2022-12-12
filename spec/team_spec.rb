require './lib/team'
require './player'

RSpec.describe Team do 
  it 'exists and has attributes' do 
    team = Team.new("France")

    expect(team.country).to eq("France")
  end

  it 'starts off as not eliminated, and can be eliminated' do 
    team = Team.new("France") 

    expect(team.eliminated?).to eq(false)
    team.eliminated

    expect(team.eliminated?).to eq(true)
  end
end