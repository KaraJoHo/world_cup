require './lib/team'
require './player'

RSpec.describe Team do 
  it 'exists and has attributes' do 
    team = Team.new("France")

    expect(team.country).to eq("France")
  end
end