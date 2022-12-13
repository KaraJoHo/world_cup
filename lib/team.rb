class Team 
  attr_reader :country, :elimination_status, :players

  def initialize(country)
    @country = country
    @elimination_status = false
    @players = []
  end

  def eliminated? 
    @elimination_status
  end

  def eliminated 
    @elimination_status = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    @players.select do |player| 
      player.position == position
    end
  end
end