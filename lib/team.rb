class Team 
  attr_reader :country, :eliminated_status

  def initialize(country)
    @country = country
    @eliminated_status = false
  end

  def eliminated? 
    @eliminated_status
  end

  def eliminated 
    @eliminated_status = true
  end
end