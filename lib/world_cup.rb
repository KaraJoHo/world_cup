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

  # def active_players_by_position(position)
  #   @teams.map do |team|
  #     team.players_by_position(position).select do |player| 
  #      team.elimination_status == false
  #     end
  #   end
  # end
  #trying to figure out a better waaayyy..

  #@teams.select do |team| 
  #team.elimination_status == false
  #team.players_by_position(position)
  #end
  #just returns the whole team object.

end