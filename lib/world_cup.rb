class WorldCup 
  attr_reader :year, :teams 

  def initialize(year, teams)
    @year = year 
    @teams = teams
  end

  def active_players_by_position(position)
    active_teams.flat_map do |team|
      team.players_by_position(position)
    end
  end

  def active_teams
    @teams.select do |team| 
      team.elimination_status == false
    end
  end

  def all_players_by_position 
    players_list = {}

    positions_key.flatten.each do |position|
      players_list[position] = players_position_value(position)
    end
    players_list
  end


  def positions_key
    position_key = @teams.map do |team| 
      team.players.map do |player| 
        player.position
      end
    end
  end

  def players_position_value(position)
    @teams.map do |team|
      team.players_by_position(position)
    end.flatten
  end
    


end