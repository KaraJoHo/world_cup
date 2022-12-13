class WorldCup 
  attr_reader :year, :teams 

  def initialize(year, teams)
    @year = year 
    @teams = teams
  end

  def active_players_by_position(position)
    @teams.map do |team|
      if team.elimination_status == false
        team.players_by_position(position)
      end
    end.flatten.compact
  end

end